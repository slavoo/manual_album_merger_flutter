import 'package:flutter/foundation.dart';

@immutable
abstract class DirectoryMergerEvent {}

class InitializeDirectoryMerger extends DirectoryMergerEvent{
  final String inputPathA;
  final String inputPathB;
  final String outputPath;

  InitializeDirectoryMerger(this.inputPathA, this.inputPathB, this.outputPath);
}

class DirectoryMergerReady extends DirectoryMergerEvent{
  final List<String> a;
  final List<String> b;
  final int currentIdx;

  DirectoryMergerReady(this.a, this.b, this.currentIdx);
}

class MergeDirectory extends DirectoryMergerEvent{
  final bool chooseA;

  MergeDirectory(this.chooseA);
}
