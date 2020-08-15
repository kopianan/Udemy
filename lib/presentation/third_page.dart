import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ThirdPage extends StatefulWidget {
  ThirdPage({Key key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  File _image;
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 200,
            width: 200,
            color: Colors.grey,
            child: (_image == null)
                ? Container(
                    child: Icon(
                      Icons.image,
                      size: 60,
                    ),
                  )
                : Image.file(
                    _image,
                    fit: BoxFit.cover,
                  ),
          ),
          RaisedButton(
            onPressed: () async {
              try {
                final pickedFile = await picker.getImage(
                  source: ImageSource.gallery,
                );
                setState(() {
                  _image = File(pickedFile.path);
                });
              } catch (e) {
                print(e.toString());
              }
            },
            child: Text("Get Image"),
          )
        ],
      ),
    );
  }
}
