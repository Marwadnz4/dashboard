import 'dart:typed_data';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker_web/image_picker_web.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({
    super.key,
    required this.imagePath,
    required this.labelText,
  });

  final void Function(Uint8List path) imagePath;
  final String labelText;
  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  bool imageAvailable = false;
  late Uint8List selectedImageInBytes;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Text(
              widget.labelText,
            ),
          ),
          const SizedBox(height: 13),
          InkWell(
            onTap: () async {
              final image = await ImagePickerWeb.getImageAsBytes();
              setState(() {
                selectedImageInBytes = image!;
                imageAvailable = true;
              });
              widget.imagePath(selectedImageInBytes);
            },
            child: SizedBox(
              height: 394,
              child: DottedBorder(
                strokeCap: StrokeCap.round,
                strokeWidth: 1,
                padding: const EdgeInsets.all(10),
                child: imageAvailable
                    ? Image.memory(
                        selectedImageInBytes,
                        fit: BoxFit.fill,
                      )
                    : const Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.green,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              'Upload Image',
                            ),
                          ],
                        ),
                      ),
              ),
            ),
          ),
          if (!imageAvailable) const SizedBox(height: 20),
          if (!imageAvailable)
            const Text(
              'You should upload cover',
            ),
        ],
      ),
    );
  }
}
