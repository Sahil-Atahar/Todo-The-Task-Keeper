import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

Future<Uint8List?> pickImage({required ImageSource imageSource}) async {
  var status = await Permission.storage.status;

  if (status.isDenied) {
    var newStatus = await Permission.storage.request();
    if (newStatus.isDenied) {
      return null;
    }
  }
  var image = await ImagePicker().pickImage(source: imageSource);
  return await image!.readAsBytes();
}
