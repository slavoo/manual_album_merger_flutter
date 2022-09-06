import 'package:bloc/bloc.dart';
import 'dart:io';
import 'directory_merger_event.dart';
import 'directory_merger_state.dart';

/// 1. Scans all files from a,b and c directory, where a and b are meant to be twins and c is the output
/// 2. d = zip(a, b)
/// 3. currentIdx = d.idxWhere(d=> d not in c)
/// 4. the returned state will contain d and currentIdx
/// 5. every time we select an item, we publish event
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

        final abzip = Iterable.generate(filesA.length)
            .map((i) => [
                  filesA[i].substring(dirA.path.length),
                  filesB[i].substring(dirB.path.length)
                ])
            .toList();

        if (abzip.any((ab) => ab[0] != ab[1])) {
          throw Exception("Unequal collections are not yet supported");
        }
        final filesOut = await scanAllFiles(dirOut);
        final currentIdx = filesOut.length;
        emit(DirectoryMergerState.ready(
            filesA, filesB, dirOut.path, currentIdx));
      } catch (e) {
        emit(DirectoryMergerState.error(e.toString()));
      }
    });

    on<MergeDirectory>((event, emit) async {
      state.maybeMap(
          ready: (s) {
            // copy file
            final toCopy = event.chooseA ? s.a : s.b;

            emit(s.copyWith(currentIdx: s.currentIdx + 1));
          },
          orElse: () {});
    });
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
}
