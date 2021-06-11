import 'package:flutter/foundation.dart';
import 'package:grpc_client/business_logic/services/web_service.dart';
import 'package:grpc_client/models/post.dart';

class PostsProvider extends ChangeNotifier {
  List<Post?> _posts = [];
  bool _fetched = false;

  Future<List<Post?>?> fetchPostsByPage(int pageNumber) async {
    try {
      if(_posts.isNotEmpty)
        _posts.clear();
      _posts.addAll(await WebService.fetchKPosts(pageNumber));


      if (_posts.isNotEmpty) {
        return _posts;
      }
    } catch (e) {
      print("exception happened: ${e}");
      return [];
    }

    notifyListeners();
    return [];
  }

  List<Post?> get posts => _posts;

  bool get requestDone => _fetched;
}
