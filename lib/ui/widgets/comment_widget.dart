import 'package:flutter/material.dart';

class CommentWidget extends StatelessWidget {
  final userName;
  final content;
  final photoUrl;

  CommentWidget(this.userName, this.photoUrl, this.content);

  @override
  Widget build(BuildContext context) {
    print(photoUrl);
    return Container(
      margin: EdgeInsets.only(bottom: 10.0, right: 10.0, top: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child:CircleAvatar(
              radius: 20.0,
              child: ClipRRect(
                child: Image.network(photoUrl),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,

                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Color.fromRGBO(220, 220, 220, 0.5), borderRadius: BorderRadius.circular(15.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(content),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 5.0, right: 10.0),
                        child: Text(
                          "13h",
                          style: TextStyle(fontSize: 12),
                        )),
                    Container(
                        margin: EdgeInsets.only(right: 10.0),
                        child: Text(
                          "Like",
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                        )),
                    Container(
                        margin: EdgeInsets.only(right: 8.0),
                        child: Text(
                          "Reply",
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
