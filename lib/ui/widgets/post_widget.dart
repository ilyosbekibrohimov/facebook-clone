
import 'dart:typed_data';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:grpc_client/business_logic/providers/createpost_provider.dart';
import 'package:grpc_client/utils/settings.dart';
import 'package:provider/provider.dart';


class PostWidget extends StatelessWidget {
  final height;
  final  showDetailedViewBottomSheet;
  final post;
   PostWidget(this.height,  this.showDetailedViewBottomSheet,  this.post);

  @override
  Widget build(BuildContext context) {
    double cardHeight = 0.5 * height;
    String postContent = "";
    if (post!.content.length > 20)
      postContent = post.content.substring(0, 19);
    else
      postContent = post.content;
    final modalHeight = (height - MediaQueryData.fromWindow(window).padding.top);
    return Consumer<PostProvider>(builder: (context, postProvider, child){
       return   Container(
         height: cardHeight,
         width: double.infinity,
         margin: EdgeInsets.only(top: 10, left: 10.0, right: 10.0),
         child: Stack(
           children: [
             InkWell(
               onTap: () async {
                 await showDetailedViewBottomSheet(
                   post.title,
                   post.content,
                   post.postId,
                   post.pictureBlob,
                   modalHeight,
                   post.isLiked
                 );
               },
               child: Container(
                 margin: EdgeInsets.only(top: 40),
                 child: Card(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(15.0),
                     ),
                     elevation: 10,
                     child: Column(
                       mainAxisSize: MainAxisSize.max,
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Expanded(
                           flex: 8,
                           child: ClipRRect(
                             borderRadius: BorderRadius.circular(15.0),
                             child: Image.memory(
                               Uint8List.fromList(post.pictureBlob!),
                               width: double.infinity,
                               fit: BoxFit.fitWidth,
                             ),
                           ),
                         ),
                         Expanded(
                             flex: 1,
                             child: Container(
                               alignment: Alignment.centerLeft,
                               margin: EdgeInsets.only(left: 10.0, top: 5.0),
                               child: Row(
                                 children: [
                                   Text(
                                     post.userName,
                                     textAlign: TextAlign.center,
                                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                   ),
                                   Text(" | 3 mins ago")
                                 ],
                               ),
                             )),
                         Expanded(
                             flex: 1,
                             child: Container(
                               alignment: Alignment.centerLeft,
                               margin: EdgeInsets.only(left: 10.0),
                               child: Text(
                                 post.title,
                                 textAlign: TextAlign.center,
                                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                               ),
                             )),
                         Expanded(
                             flex: 1,
                             child: Row(
                               children: [
                                 Container(margin: EdgeInsets.only(left: 10.0), child: Text(postContent)),
                                 if (post.content.length > 20)
                                   Container(
                                     child: MaterialButton(
                                       onPressed: () async {
                                         await showDetailedViewBottomSheet(post.title, post.content, post.postId, post.pictureBlob, modalHeight, post.isLiked);
                                       },
                                       child: Text("...See more"),
                                       textColor: Colors.blue,
                                     ),
                                   )
                               ],
                             )),

                       ],
                     )),
               ),
             ),
             Container(
               alignment: Alignment.topCenter,
               child: CircleAvatar(
                 child: CircleAvatar(
                   radius: 38,
                   child: ClipRRect(
                     child: Image.network(post.userPhotoUrl),
                     borderRadius: BorderRadius.circular(50.0),
                   ),
                 ),
                 radius: 40,
                 backgroundColor: Colors.red,
               ),
             )
           ],
         ),
       );
    });
  }
}
