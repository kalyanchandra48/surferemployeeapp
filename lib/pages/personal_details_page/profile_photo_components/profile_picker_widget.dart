import 'dart:io';

import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePickerWidget extends StatefulWidget {
  const ProfilePickerWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfilePickerWidget> createState() => _ProfilePickerWidgetState();
}

class _ProfilePickerWidgetState extends State<ProfilePickerWidget> {
  final ImagePicker _picker = ImagePicker();
  XFile? image;
  late File imageFile;
  bool loading = false;

  void _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        loading = true;
      });
      imageFile = File(pickedFile.path);
      File croppedFile = (await ImageCropper().cropImage(
        sourcePath: imageFile.path,
        aspectRatio: const CropAspectRatio(
          ratioX: 1.0,
          ratioY: 1.0,
        ),
        cropStyle: CropStyle.rectangle,
        compressQuality: 90,
        androidUiSettings: const AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.deepOrange,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        iosUiSettings: const IOSUiSettings(
          title: 'Crop Your Image',
        ),
      ))!;
      croppedFile;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _pickImage();
      },
      child: Container(
        height: 118,
        width: 118,
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
            color: Color(0xff0D2877),
            blurRadius: 19,
            offset: Offset(10, 10),
            spreadRadius: 0,
          )
        ], shape: BoxShape.circle, color: ContainerColors.white),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              "assets/profile_add_icon.png",
              height: 28,
              width: 28,
            ),
            const SizedBox(height: 6),
            Text(
              'Upload',
              style: AppFonts.hintText14,
            ),
          ]),
        ),
      ),
    );
  }
}