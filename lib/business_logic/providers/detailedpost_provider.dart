import 'package:flutter/cupertino.dart';
import 'package:grpc_client/business_logic/services/web_service.dart';
import 'package:grpc_client/models/comment_model.dart';
import 'package:grpc_client/models/post.dart';

class DetailedPostProvider extends ChangeNotifier {
  List<Comment?>? comments = [];
 late  Post? _singlePost;

 Future<void> fetchPostDetails(int postId,  int userId)async{
    _singlePost = await WebService.searchPostById(postId,  userId);
     notifyListeners();
 }

  Future<bool> createComment(int userId, int postId, String content) async {
    try {
      return await WebService.createComment(userId, postId, content);
    } catch (e) {
      print("e");
      return false;
    }
  }

  Future<bool> fetchComments(int postId) async {
    if(comments!.isNotEmpty) comments!.clear();
    try {
      comments!.addAll(await WebService.fetchCommentsByID(postId));
      notifyListeners();
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> likePost(int userID,  int postID)async{
    bool?  success = false;
    try{
      success = await WebService.likePost(userID, postID);
      return success;
    }
    catch(e){
      print(e);
      return false;
    }

  }

  Future<bool> unlikePost(int userID,  int postID)async{
    bool?  success = false;
    try{
      success = await WebService.unlikePost(userID, postID);
      return success;
    }
    catch(e){
      print(e);
      return false;
    }

  }
  Post? get singlePost => _singlePost;
}
