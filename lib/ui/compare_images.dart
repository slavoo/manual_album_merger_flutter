import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image/image.dart' as i;

enum ImageSelected { a, b }

class ImageComparer extends StatelessWidget {
  final String imageA;
  final String imageB;

  final void Function(ImageSelected) onSelected;

  const ImageComparer(
      {super.key,
      required this.imageA,
      required this.imageB,
      required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return Focus(
      onKeyEvent: (node, event) {
        if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
          onSelected(ImageSelected.a);
        } else if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
          onSelected(ImageSelected.b);
        }
        return KeyEventResult.handled;
      },
      child: Row(
        children: [
          Expanded(child: tailToCompare(imageA, ImageSelected.a)),
          Expanded(child: tailToCompare(imageB, ImageSelected.b))
        ],
      ),
    );
  }

  Widget tailToCompare(String path, ImageSelected selected) => FittedBox(
    child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(path),
              InkWell(onTap: () => onSelected(selected), child: toImage(path)),
            ],
          ),
        ),
  );

  Widget toImage(String path) {
    final aBytes = File(path).readAsBytesSync();
    final dec = i.findDecoderForData(aBytes);
    final tiffdata = dec!.decodeImage(aBytes)!;
    return Image.memory(
      Uint8List.fromList(i.encodeBmp(tiffdata)),
      fit: BoxFit.contain,
    );
  }
}
