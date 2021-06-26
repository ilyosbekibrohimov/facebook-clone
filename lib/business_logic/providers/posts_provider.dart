import 'package:flutter/foundation.dart';
import 'package:grpc_client/business_logic/services/web_service.dart';
import 'package:grpc_client/models/post.dart';

class PostsProvider extends ChangeNotifier {
  List<Post?> _posts = [];
  bool _fetched = false;


  Future<bool> fetchPostsByPage(int pageNumber) async {
    if(_posts.isNotEmpty)
      _posts.clear();
    try {
      _posts.addAll(await WebService.fetchKPosts(pageNumber));
      print(_posts.length);
      _fetched = true;
       notifyListeners();
       return true;
    } catch (e) {
      print("exception happened: ${e}");
      return false;
    }

  }

  List<Post?> get posts => _posts;

  bool get requestDone => _fetched;
}
