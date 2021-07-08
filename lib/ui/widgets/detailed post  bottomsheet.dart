import 'dart:typed_data';

import 'package:flutter/material.dart';

class DetailedPostBottomSheet extends StatelessWidget {
  final title;
  final content;
  final pictureBlob;
  final height;

  DetailedPostBottomSheet(this.title, this.content, this.pictureBlob,  this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              child: IconButton(onPressed: () {
                Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back)),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(title,  style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold
            ),),),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              width: double.infinity,
              margin: EdgeInsets.all(10
              ),
              child: ClipRRect(

                borderRadius: BorderRadius.circular(15.0),
                child: Image.memory(
                  Uint8List.fromList(pictureBlob!),
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              alignment:Alignment.centerLeft,
              child: Text(content),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
               children: [
                Expanded(
                  flex: 7,

                  child: Container(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                 Expanded(
                     flex: 3,
                     child: Container(
                         margin: EdgeInsets.only(left: 10.0),
                         child: MaterialButton(
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                             color: Colors.blue, textColor: Colors.white, onPressed: (){},  child: Text("comment"))))
               ],
            ),)
          ],
        ),
      ),
    );
  }
}
