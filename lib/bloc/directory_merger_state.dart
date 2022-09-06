import 'package:freezed_annotation/freezed_annotation.dart';

part 'directory_merger_state.freezed.dart';

@freezed
class DirectoryMergerState with _$DirectoryMergerState{
  const factory DirectoryMergerState.init() = Init;
  const factory DirectoryMergerState.loading() = Loading;
  const factory DirectoryMergerState.error(String message) = Error;
  const factory DirectoryMergerState.ready(List<String> a, List<String> b, String outDir, int currentIdx) = Ready;
}
