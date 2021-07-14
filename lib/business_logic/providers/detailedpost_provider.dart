import 'package:flutter/cupertino.dart';
import 'package:grpc_client/business_logic/services/web_service.dart';
import 'package:grpc_client/models/comment_model.dart';

class DetailedPostProvider extends ChangeNotifier {
  List<Comment?>? comments = [];

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
}
