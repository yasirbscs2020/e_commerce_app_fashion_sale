import 'package:e_commerce_app_fashion_sale/ui/common/visual_search/visual_search_screen.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:image_picker/image_picker.dart';

class ImagePickerPage extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final type;
  const ImagePickerPage(this.type, {Key? key}) : super(key: key);

  @override
  // ignore: unnecessary_this, no_logic_in_create_state
  ImagePickerPageState createState() => ImagePickerPageState(this.type);
}

class ImagePickerPageState extends State<ImagePickerPage> {
  // ignore: prefer_typing_uninitialized_variables
  var _image;
  // ignore: prefer_typing_uninitialized_variables
  var imagePicker;
  // ignore: prefer_typing_uninitialized_variables
  var type;

  ImagePickerPageState(this.type);

  @override
  void initState() {
    super.initState();
    imagePicker = ImagePicker();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: GestureDetector(
              onTap: () async {
                var source = type == ImageSourceType.camera
                    ? ImageSource.camera
                    : ImageSource.gallery;
                // ignore: unused_local_variable
                XFile image = await imagePicker.pickImage(
                    source: source,
                    imageQuality: 50,
                    preferredCameraDevice: CameraDevice.front);
                setState(() {
                  // _image = File;
                });
              },
              child: Container(
                child: _image != null
                    ? Image.file(
                        _image,
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.fitHeight,
                      )
                    : Icon(
                        Icons.camera_alt,
                        size: 40,
                        color: Colors.grey[800],
                      ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
