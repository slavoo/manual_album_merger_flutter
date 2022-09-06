import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DirectorySelector extends StatefulWidget {
  final Function(String, String, String) onSelected;

  const DirectorySelector({super.key, required this.onSelected});

  @override
  State<DirectorySelector> createState() => _DirectorySelectorState();
}

class _DirectorySelectorState extends State<DirectorySelector> {
  String? dirA, dirB, outDir;

  bool get isReady => dirA != null && dirB != null && outDir != null;

  void updateState() {
    if (!isReady) {
      return;
    }

    setState(() {});
  }

  void updateDirA(String val) {
    dirA = val;
    updateState();
  }

  void updateDirB(String val) {
    dirB = val;
    updateState();
  }

  void updateOutDir(String val) {
    outDir = val;
    updateState();
  }

  void onSelected() {
    widget.onSelected(dirA!, dirB!, outDir!);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            DirectoryInputField(
              title: "Directory A",
              onChanged: updateDirA,
            ),
            DirectoryInputField(
              title: "Directory B",
              onChanged: updateDirB,
            ),
          ],
        ),
        DirectoryInputField(
          title: "Output Directory",
          onChanged: updateOutDir,
        ),
        const Divider(),
        ElevatedButton(
            onPressed: isReady ? onSelected : null, child: const Text("Go!"))
      ],
    );
  }
}

class DirectoryInputField extends StatefulWidget {
  final String title;
  final Function(String)? onChanged;

  const DirectoryInputField({super.key, required this.title, this.onChanged});

  @override
  State<DirectoryInputField> createState() => _DirectoryInputFieldState();
}

class _DirectoryInputFieldState extends State<DirectoryInputField> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    LastPathProvider()
        .getLastPath(widget.title)
        .then((v) {
          controller.text = v;
          onChanged(v);
        });
    super.initState();
  }

  void onChanged(String value) {
    Directory(value).exists().then((exists) {
      if (exists) {
        widget.onChanged?.call(value);
        LastPathProvider().saveLastPath(widget.title, value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Card(
        margin: const EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title),
              const Divider(),
              TextField(
                controller: controller,
                onChanged: onChanged,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () async {
                          final newValue = await FilePicker.platform
                              .getDirectoryPath(
                                  lockParentWindow: true,
                                  initialDirectory: controller.text);

                          if (newValue == null) {
                            return;
                          }

                          controller.text = newValue;
                          onChanged(newValue);
                        },
                        icon: const Icon(Icons.folder_open))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LastPathProvider {
  static const _lastsKey = "directory-input-lasts";

  Future<String> getLastPath(String key) async {
    final sp = await SharedPreferences.getInstance();

    final lasts = sp.getStringList(_lastsKey)?.toList() ?? [];

    final downloadsDirPath = await getDownloadsDirectory();

    final titleKey = "$key:";

    final last = lasts.firstWhere((l) => l.startsWith(titleKey),
        orElse: () => "$titleKey${downloadsDirPath?.path ?? ''}");

    final initialPath = last.substring(titleKey.length);

    return initialPath;
  }

  Future saveLastPath(String key, String path) async {
    final sp = await SharedPreferences.getInstance();

    final lasts = sp.getStringList(_lastsKey)?.toList() ?? [];

    final titleKey = "$key:";

    final updatedLasts = lasts.any((e) => e.startsWith(titleKey))
        ? lasts
            .map((e) => e.startsWith(titleKey) ? "$titleKey$path" : e)
            .toList()
        : [...lasts, "$titleKey$path"];

    await sp.setStringList(_lastsKey, updatedLasts);
  }
}
