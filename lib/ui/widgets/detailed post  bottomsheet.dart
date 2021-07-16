import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:grpc_client/business_logic/providers/detailedpost_provider.dart';
import 'package:grpc_client/business_logic/services/web_service.dart';
import 'package:grpc_client/models/post.dart';
import 'package:grpc_client/ui/widgets/comment_widget.dart';
import 'package:grpc_client/utils/settings.dart';
import 'package:http/http.dart';
import 'package:like_button/like_button.dart';
import 'package:provider/provider.dart';

class DetailedPostBottomSheet extends StatefulWidget {
  final isLiked;
  final height;
  int id;
  bool fetched = false;
  bool  isPostLiked  = false;

  DetailedPostBottomSheet(this.height, this.id, this.isLiked);

  @override
  _DetailedPostBottomSheetState createState() => _DetailedPostBottomSheetState();
}

class _DetailedPostBottomSheetState extends State<DetailedPostBottomSheet> {
  final controller = TextEditingController();
  DetailedPostProvider detailedProvider = DetailedPostProvider();


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    detailedProvider = Provider.of<DetailedPostProvider>(context, listen: true);

    if (!widget.fetched) {
      detailedProvider.fetchComments(widget.id).then((value) {
        print("done");
      });

      if(preferences!.getString("user_id") != null){
        String? userId = preferences!.getString("user_id");
        detailedProvider.fetchPostDetails(widget.id, int.parse(userId!)).then((value){
          if(detailedProvider.singlePost!.isLiked)
            widget.isPostLiked = true;

          else widget.isPostLiked = false;
        });
      }
      else
        detailedProvider.fetchPostDetails(widget.id, -1).then((value){
        });
      widget.fetched = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.height,
        child: ListView.builder(
            itemCount: 3 + detailedProvider.comments!.length,
            itemBuilder: (ctx, index) {
              if (index == 0)
                return _buildHeaderWidget();
              else if (index == 1)
                return _buildMainWidget(widget.isLiked);
              else if (index == 2)
                return _buildCommentWidget();
              else {
                print("index is another on");
                index = index - 3;
                print(index);
                return _buildCommentsWidget(detailedProvider.comments![index]!.userName, detailedProvider.comments![index]!.photoUrl, detailedProvider.comments![index]!.content);
              }
            }));
  }

  Widget _buildHeaderWidget() {
    return Container(
      alignment: Alignment.bottomLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ],
      ),
    );
  }

  Widget _buildCommentsWidget(String userName, String photoUrl, String content) {
    return CommentWidget(userName, photoUrl, content);
  }

  Widget _buildMainWidget(bool  isLiked) {
    print("liked $isLiked");
    String? userId = preferences!.getString("user_id") ?? null;
    return Column(
      children: [
        Divider(
          height: 2,
          color: Colors.black54,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            detailedProvider.singlePost!.title??"none",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: widget.height * 0.5,
              decoration: new BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider("https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iKIWgaiJUtss/v2/-1x-1.jpg"),
                ),
              ),
            ),
            Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(color: Colors.black54, borderRadius: BorderRadius.only(topRight: Radius.circular(20.0), bottomLeft: Radius.circular(20.0))),
                margin: EdgeInsets.only(top: 10.0, right: 10.0),
                child:

              !widget.isPostLiked?  IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                    size: 50,
                  ),
                  onPressed: () {
                    if (userId != null)
                      detailedProvider.likePost(int.parse(userId), widget.id).then((value) {
                        if (value) {
                          if(value)
                            setState(() {
                              widget.isPostLiked = true;
                            });
                        }
                        else {
                          showToast("Sorry,error wrong happened");
                        }
                      });
                    else
                      print("please authentication first");
                  },
                ): IconButton(onPressed: (){
                if (userId != null)
                  detailedProvider.unlikePost(int.parse(userId), widget.id).then((value) {
                    if (value) {
                      if(value)
                        setState(() {
                          widget.isPostLiked = false ;
                        });
                    }
                    else {
                      showToast("Sorry,error wrong happened");
                    }
                  });
                else
                  showToast("Please sign in first!");


              }, icon: Icon(Icons.favorite),  iconSize: 50, color: Colors.red,))
          ],
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color: Color.fromRGBO(220, 220, 220, 0.5), borderRadius: BorderRadius.all(Radius.circular(20))),
          margin: EdgeInsets.all(10),
          alignment: Alignment.centerLeft,
          child: Text(
            detailedProvider.singlePost!.content??"none",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Divider(
          height: 2,
          color: Colors.black54,
        ),
      ],
    );
  }

  Widget _buildCommentWidget() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.centerLeft,
          child: Text(
            "Your comment",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Row(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                child: Padding(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        isDense: true, // Added this
                        contentPadding: EdgeInsets.all(8), //
                        hintText: "Please comment your opinion",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      )),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () async {
                      String? userId = preferences!.getString("user_id") ?? null;

                      if (userId != null) {
                        await WebService.createComment(int.parse(userId), widget.id, controller.text).then((value) {
                          if (value)
                            print("your comment is successful");
                          else
                            print("please try again");
                        });
                      } else {
                        print("Please signin first!");
                      }
                    },
                    child: Text("Submit"),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
