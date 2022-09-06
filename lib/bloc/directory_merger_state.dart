import 'package:freezed_annotation/freezed_annotation.dart';

part 'directory_merger_state.freezed.dart';

@freezed
class DirectoryMergerState with _$DirectoryMergerState{
  const factory DirectoryMergerState.init() = Init;
  const factory DirectoryMergerState.loading() = Loading;
  const factory DirectoryMergerState.error(String message) = Error;
  const factory DirectoryMergerState.ready(List<String> aFiles, String aDir, List<String> bFiles, String bDir, List<String> outFiles, String outDir ) = Ready;
}
