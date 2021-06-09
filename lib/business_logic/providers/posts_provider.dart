import 'package:flutter/foundation.dart';
import 'package:grpc_client/business_logic/services/web_service.dart';
import 'package:grpc_client/models/post_model.dart';

class PostsProvider extends ChangeNotifier {
  List<Post?> _posts = [];


  Future<bool> fetchPosts(int k) async {
    final fetchedPosts = await WebService.fetchKPosts(k);
    bool status;

    print(fetchedPosts);
    if (fetchedPosts.isNotEmpty) {
      if(_posts.isNotEmpty)
        _posts.clear();
      _posts.addAll(fetchedPosts);

      status = true;
    } else {
      status = false;
    }
    notifyListeners();
    return status;
  }

  Future<void> testRequest(int k) async{
    final response = await WebService.fetchPostsIds(k);

  }

  List<Post?> get posts => _posts;
}
