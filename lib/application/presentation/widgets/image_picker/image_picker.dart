import 'dart:io';

import 'package:device_mart/domain/models/image/image_model/image_model.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

class PickImage {
  static Future<ImageModel?> getImageFromGallery() async {
    XFile? pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      final fileImage = File(pickedImage.path);
      return ImageModel(
          fileImage: fileImage,
          multipartFile: await MultipartFile.fromFile(fileImage.path));
    }
    return null;
  }
}