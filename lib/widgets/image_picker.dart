import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickImage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PickImage();
  }
}

class _PickImage extends State<PickImage> {
  File? showImage;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () async {
        ImagePicker picker = ImagePicker();
        // ignore: non_constant_identifier_names
        XFile? DragImage = await picker.pickImage(source: ImageSource.gallery);
        if (DragImage != null) {
          showImage = File(DragImage.path);
          setState(() {});
        }
      },
      child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40), color: Colors.amber),
          child: showImage != null
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.file(
                    showImage!,
                    fit: BoxFit.fill,
                  ),
                )
              : null),
    );
  }
}
