import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:grpc_client/business_logic/providers/single_post_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class PostBottomSheet extends StatefulWidget {
  const PostBottomSheet();

  @override
  _PostBottomSheetState createState() => _PostBottomSheetState();
}

class _PostBottomSheetState extends State<PostBottomSheet> {
  File? _file;
  ImagePicker _imagePicker = ImagePicker();
  List<int> _pictureBlob = [];
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();
  bool _quit = false;
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [_buildHeader(context), _buildDivider(), _buildTitle(), _buildContent(), _file != null ? _buildImage() : _buildPictureSelector(context), _buildPostWidget(), if(_loading) _buildLoadingWidget()],
          ),
        ),
      ),
    );
  }

  //region build widgets
  Widget _buildHeader(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                showDialog<void>(
                  context: context,
                  barrierDismissible: false, // user must tap button!
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Warning!!!'),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Text('You will lose your post'),
                            Text('Are you sure you want to  quit?'),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              child: Text('Yes'),
                              onPressed: () {
                                setState(() {
                                  _quit = true;
                                });
                                Navigator.of(context).pop();
                              },
                            ),
                            TextButton(
                              child: Text('No'),
                              onPressed: () {
                                setState(() {
                                  _quit = false;
                                  ;
                                });
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        )
                      ],
                    );
                  },
                ).then((value) {
                  if (_quit)
                    Navigator.pop(context);
                });
              },
              icon: Icon(Icons.close)),
          Spacer(),
          Text(
            "Create Post",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Spacer(),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Container(
      margin: EdgeInsets.only(top: 10, right: 10, left: 10),
      child: TextFormField(
        controller: _titleController,
        autofocus: true,
        decoration: InputDecoration(
          hintText: "Your title",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Container(
      margin: EdgeInsets.only(top: 10, right: 10, left: 10),
      child: TextFormField(
        controller: _contentController,
        maxLines: 5,
        decoration: InputDecoration(
          hintText: "What's in your mind?",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }

  Widget _buildPictureSelector(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MaterialButton(
              elevation: 5.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              color: Color.fromRGBO(255, 255, 240, 0.8),
              onPressed: () {
                _buildBottomSheet(context);
              },
              child: Text("Photo")),
          MaterialButton(elevation: 5.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              color: Color.fromRGBO(255, 255, 240, 0.8),
              onPressed: () {},
              child: Text("Video")),
          MaterialButton(elevation: 5.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              color: Color.fromRGBO(255, 255, 240, 0.8),
              onPressed: () {},
              child: Text("Location")),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Container(margin: EdgeInsets.all(10), child: Image.file(_file!));
  }

  Widget _buildPostWidget() {
    return Consumer<PostProvider>(builder: (context, post, child) {
      return Container(
        width: double.maxFinite,
        margin: EdgeInsets.all(10),
        child: MaterialButton(
            elevation: 5.0,
            color: Colors.blue,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            textColor: Colors.white,
            onPressed: (){
              setState(() {
                _loading = true;
              });
            post.post(_titleController.text, _contentController.text, _pictureBlob).then((value) {
              setState(() {
                _loading = false;
                Navigator.pop(context);
              });
        });
    },
          child: Text("POST")),
      );
  }

  );
}

Widget _buildDivider() {
  return Divider(
    color: Colors.black38,
    height: 1,
  );
}

Future<void> _buildBottomSheet(BuildContext context) async {
  showModalBottomSheet(
      context: context,
      builder: (context) =>
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  onPressed: () async {
                    await getImage(ImageSource.camera);
                    Navigator.pop(context);
                  },
                  child: Text("Camera"),
                ),
                MaterialButton(
                  onPressed: () async {
                    await getImage(ImageSource.gallery);
                    Navigator.pop(context);
                  },
                  child: Text("Photo"),
                ),
              ],
            ),
          ));
}

Widget _buildLoadingWidget() {
  return SpinKitThreeBounce(
    color: Colors.blue,
    size: 50.0,
  );
}

//reion utils
Future getImage(ImageSource imageSource) async {
  final pickedFile = await _imagePicker.getImage(source: imageSource);
  final bytes = await pickedFile?.readAsBytes();
  if (pickedFile != null) {
    setState(() {
      _file = File(pickedFile.path);
      _pictureBlob.addAll(bytes!);
    });
  } else {
    print("No image selected");
  }
}


}
