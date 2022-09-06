import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manual_album_merger_flutter/bloc/directory_merger_bloc.dart';
import 'package:manual_album_merger_flutter/ui/compare_images.dart';
import 'package:manual_album_merger_flutter/ui/directory_selector.dart';

import 'bloc/directory_merger_event.dart';
import 'bloc/directory_merger_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.green),
      home: BlocProvider(
        create: (context) => DirectoryMergerBloc(),
        child: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Directory Merger"),
      ),
      body: BlocBuilder<DirectoryMergerBloc, DirectoryMergerState>(
        builder: (context, state) => state.map<Widget>(
          init: (s) => Center(
            child: DirectorySelector(
              onSelected: (dirA, dirB, outDir) {
                context
                    .read<DirectoryMergerBloc>()
                    .add(InitializeDirectoryMerger(dirA, dirB, outDir));
              },
            ),
          ),
          error: (s) => Text(s.message),
          loading: (s) => const CircularProgressIndicator(),
          ready: (s) => ImageComparer(
            imageA: s.aFiles[s.outFiles.length],
            imageB: s.bFiles[s.outFiles.length],
            onSelected: (selected) {
              context.read<DirectoryMergerBloc>().add(MergeDirectory(selected == ImageSelected.a));
            },
          ),
        ),
      ),
    );
  }
}
