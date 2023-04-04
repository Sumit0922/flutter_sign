import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'ImageUpload.dart';

class MyImage extends StatefulWidget {
  final Function getApiUrl ;
  const MyImage({Key? key,required this.getApiUrl}): super(key: key);

  @override
  _MyImageState createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> {
  late ImageUpload imageUpload;
  final image = TextEditingController();
  File? _imageFile;

  Map<String, dynamic> data = {};
  @override
  void initState() {
    super.initState();
    imageUpload = ImageUpload();

  }


  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().getImage(source: source);
    setState(() {
      if (pickedFile != null) {
        _imageFile = File(pickedFile.path);
        image.text = pickedFile.path;
        String imagePath = image.text ;
        imageUpload.uploadFile(imagePath).then((value) {
          widget.getApiUrl(value);
        });

      }
    });
  }
  Future<void> _pickCam(ImageSource source) async {
    final pickedFile = await ImagePicker().getImage(source: source);
    setState(() {
      if (pickedFile != null) {
        _imageFile = File(pickedFile.path);
        image.text = pickedFile.path;
        String imagePath = image.text ;
        imageUpload.uploadFile(imagePath).then((value) {
          widget.getApiUrl(value);
        });

      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage:
              _imageFile != null ? FileImage(_imageFile!) : null,
            ),
            const SizedBox(width: 20,),
            ElevatedButton.icon(onPressed: ()=> _pickImage(ImageSource.camera),
              icon:Icon(Icons.camera_alt_outlined), label: Text('Cam'),),
            const SizedBox(width: 5,),
            ElevatedButton.icon(onPressed: ()=> _pickCam(ImageSource.gallery),
              icon:Icon(Icons.image), label: Text('Choose Image'),),
          ],
        ),
        TextField(
          controller: image,
          decoration: InputDecoration(labelText: 'Image Path'),
        ),

      ],
    );
  }

}

