import 'package:bloc/bloc.dart';
import 'package:path/path.dart';
import 'dart:io';
import 'directory_merger_event.dart';
import 'directory_merger_state.dart';

class DirectoryMergerBloc
    extends Bloc<DirectoryMergerEvent, DirectoryMergerState> {
  DirectoryMergerBloc() : super(const DirectoryMergerState.init()) {
    on<InitializeDirectoryMerger>((event, emit) async {
      emit(const DirectoryMergerState.loading());

      try {
        final dirA = Directory(event.inputPathA);
        if (!await dirA.exists()) {
          throw Exception(
              "Input directory A does not exist: ${event.inputPathA}");
        }
        final dirB = Directory(event.inputPathB);
        if (!await dirB.exists()) {
          throw Exception(
              "Input directory B does not exist: ${event.inputPathB}");
        }

        final dirOut = Directory(event.outputPath);
        if (!await dirOut.exists()) {
          throw Exception(
              "Output directory does not exist: ${event.outputPath}");
        }

        final filesA = await scanAllFiles(dirA);
        final filesB = await scanAllFiles(dirB);
        final filesOut = await scanAllFiles(dirOut);

        validateInputs(filesA, dirA, filesB, dirB, filesOut, dirOut);

        emit(DirectoryMergerState.ready(
            filesA, dirA.path, filesB, dirB.path, filesOut, dirOut.path));
      } catch (e) {
        emit(DirectoryMergerState.error(e.toString()));
      }
    });

    on<MergeDirectory>((event, emit) async {
      state.maybeMap(
          ready: (s) {
            // copy file
            final sourcePath =
                (event.chooseA ? s.aFiles : s.bFiles)[s.outFiles.length];
            final outFile = event.chooseA
                ? s.aFiles[s.outFiles.length].substring(s.aDir.length + 1)
                : s.bFiles[s.outFiles.length].substring(s.bDir.length + 1);

            final destPath = join(s.outDir, outFile);

            copy(sourcePath, destPath);

            emit(s.copyWith(outFiles: [...s.outFiles, destPath]));
          },
          orElse: () {});
    });
  }

  void validateInputs(List<String> filesA, Directory dirA, List<String> filesB,
      Directory dirB, List<String> filesOut, Directory dirOut) {
    final abzip = Iterable.generate(filesA.length)
        .map((i) => [
              filesA[i].substring(dirA.path.length),
              filesB[i].substring(dirB.path.length),
              filesOut.length > i
                  ? filesOut[i].substring(dirOut.path.length)
                  : null
            ])
        .toList();

    if (abzip.any((ab) => ab[0] != ab[1])) {
      throw Exception("Unequal collections are not yet supported");
    }

    if (Iterable.generate(filesOut.length)
        .any((i) => abzip[i][0] != abzip[i][2])) {
      throw Exception(
          "Some output files don't seem to be in the collection or otherwise ...");
    }
  }

  List<List<String>> fullOuterJoin(List<String> filesA, List<String> filesB) {
    if (filesA.length != filesB.length) {
      throw Exception("unequal collections are not supported");
    }

    return Iterable.generate(filesA.length)
        .map((i) => [filesA[i], filesB[i]])
        .toList();
  }

  Future<List<String>> scanAllFiles(Directory dir) async {
    final list = await dir.list(recursive: true).toList();
    return list
        .where((e) => e is File && e.path.endsWith(".tiff"))
        .map((e) => e.path)
        .toList();
  }

  void copy(String sourcePath, String destPath) {
    File(destPath).parent.createSync(recursive: true);
    File(sourcePath).copySync(destPath);
  }
}
