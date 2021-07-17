import 'dart:math';

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc_client/models/comment_model.dart';
import 'package:grpc_client/models/post.dart';
import 'package:grpc_client/utils/generated_files/posts.pb.dart';
import 'package:grpc_client/utils/generated_files/posts.pbgrpc.dart';

class WebService {
  static ClientChannel? _channel;

  static Future<bool> post(String title, String content, List<int> pictureBlob, String userId) async {
    final stub = PostServiceClient(WebService.channel()!);
    try {
      final response = await stub.uploadPost(UploadPost_Request()
        ..title = title
        ..content = content
        ..pictureBlob = pictureBlob
        ..id = userId
        ..timestamp = DateTime.now().millisecondsSinceEpoch.toString());
      print(response.success);
      return response.success;
    } catch (e) {
      print(e);
      return false;
    }
  }

  static Future<Post?> searchPostById(int postId, int userId) async {
    final stub = PostServiceClient(WebService.channel()!);

    try {
      final response = await stub.fetchPostDetails(FetchPostDetails_Request()
        ..postId = postId
        ..userId = userId);

      if (response.success) {
        return Post.create(response.title, response.content, response.pictureBlob, postId, response.creatorName, response.creatorPhotoUrl, response.numberOfLikes, response.isLiked, response.userId);
      }
      return null;
    } catch (e) {
      print(e);
      return null;
    }
  }

  static Future<List<Post?>> fetchKPosts(int pageNumber) async {
    final stub = PostServiceClient(WebService.channel()!);
    List<Post> posts = [];
    try {
      final response = await stub.fetchPosts(FetchPostsByPage_Request()..pageNumber = pageNumber);
      if (response.success) {
        for (int i = 0; i < response.title.length; i++) {
          posts.add(Post.create(response.title[i], response.content[i], response.pictureBlob[i], response.id[i], response.creatorNames[i], response.creatorsPhotoUrl[i], -1, false, -1));
        }
      } else {
        posts.add(Post.create("none", "none", [], -1, "unknown", "unknown", -1, false, -1));
      }
      return posts;
    } catch (e) {
      print(e);
      posts.add(Post.create(e.toString(), e.toString(), [], -1, "unknown", "unknown", -1, false, -1));
      return posts;
    }
  }

  static Future<int?> authenticate(String? idToken) async {
    final stub = PostServiceClient(WebService.channel()!);
    final response = await stub.authenticateUser(AuthenticateUser_Request()..idToken = idToken!);
    print(response);
    if (response.success) {
      print(response.userId);
      return response.userId;
    }
    return null;
  }

  static Future<bool> createComment(int userId, int postId, String content) async {
    try {
      final stub = PostServiceClient(WebService.channel()!);
      final response = await stub.createComment(CreateComment_Request()
        ..userId = userId
        ..postId = postId
        ..content = content);
      if (response.success) {
        print('hey you did it');
        return true;
      } else
        return false;
    } catch (e) {
      print(e);
      return false;
    }
  }

  static Future<List<Comment?>> fetchCommentsByID(int id) async {
    List<Comment?> comments = [];
    try {
      final stub = PostServiceClient(WebService.channel()!);
      final response = await stub.fetchComments(FetchCommentsByPost_Request()..postId = id);
      if (response.success) {
        for (int i = 0; i < response.content.length; i++) {
          print(response.content[i]);
          comments.add(Comment.create(response.content[i], response.userName[i], response.userPhotoUrl[i]));
        }
        return comments;
      } else
        return [];
    } catch (e) {
      print(e);
      return [];
    }
  }

  static Future<bool> likePost(int userID, int postID) async {
    try {
      final stub = PostServiceClient(WebService.channel()!);
      final response = await stub.likePost(LikePost_Request()
        ..userId = userID
        ..postId = postID
        ..timestamp = DateTime.now().millisecondsSinceEpoch.toString());

      if (response.success)
        return true;
      else
        return false;
    } catch (e) {
      print(e);
      return false;
    }
  }

  static Future<bool> unlikePost(int userID, int postID) async {
    try {
      final stub = PostServiceClient(WebService.channel()!);
      final response = await stub.unlikePost(UnlikePost_Request()
        ..userId = userID
        ..postId = postID
        ..timestamp = DateTime.now().millisecondsSinceEpoch.toString());

      if (response.success)
        return true;
      else
        return false;
    } catch (e) {
      print(e);
      return false;
    }
  }

  static Future<bool> editPost(int userId, int postId, String title, String content, List<int> pictureBlob) async {
    try {
      final stub = PostServiceClient(WebService.channel()!);
      final response = await stub.editPost(EditPost_Request()
        ..userId = userId
        ..postId = postId
        ..title = title
        ..content = content
        ..pictureBlob = pictureBlob);

      if (response.success) {
         print("response ${response.success}");
        return true;
      }else
        return false;
    } catch (e) {
      print(e);
      return false;
    }
  }

  //open channel if it is null
  static ClientChannel? channel() {
    if (_channel == null) {
      _channel = ClientChannel('192.168.0.101', port: 50051, options: const ChannelOptions(credentials: ChannelCredentials.insecure()));
    }
    return _channel;
  }
}
