import 'package:grpc/grpc.dart';
import 'package:grpc_client/models/post_model.dart';
import 'package:grpc_client/utils/generated_files/posts.pb.dart';
import 'package:grpc_client/utils/generated_files/posts.pbgrpc.dart';

class WebService {
  static ClientChannel? _channel;

  static Future<bool> post(String title, String content, List<int> pictureBlob) async {
    final stub = PostServiceClient(WebService.channel()!);
    try {
      final response = await stub.uploadPost(UploadPost_Request()
        ..title = title
        ..content = content
        ..pictureBlob = pictureBlob);
      print(response.success);
      return response.success;
    } catch (e) {
      print(e);
      return false;
    }
  }

  static Future<Post?> fetchSinglePost(int id) async {
    final stub = PostServiceClient(WebService.channel()!);

    try {
      final response = await stub.fetchPostDetails(FetchPostDetails_Request()..postId = id);
      return Post.create(response.title, response.content, response.pictureBlob);
    } catch (e) {
      print(e);
      return null;
    }
  }

  static Future<List<int>?> fetchPostsIds(int k) async {
    final stub = PostServiceClient(WebService.channel()!);

    try {
      final response = await stub.fetchPosts(FetchKPostIds_Request()..k = 10);
      print(response.id);
      return response.id;
    } catch (e) {
      print(e);
      return null;
    }
  }

  static Future<List<Post?>> fetchKPosts(int k) async {
    try {
      List<Post> posts = [];
      List<int?> ids = [];

      print("I am here 1");
      final fetchedIds = await fetchPostsIds(k);
      if (fetchedIds != null && fetchedIds.isNotEmpty) {

        ids.addAll(fetchedIds);
        print(ids);

      }
      else{
        print("no no ilyos");
      }
      print("I am here 1");

      for (int i = 0; i < k; i++) {
        final post = await fetchSinglePost(ids[i]!);
        if (post != null) {
          print(post.title);

          print(post.content);
          posts.add(post);
        }
        else{
          print("no no");
        }
      }
      print("I am here 1");

      return posts;
    } catch (e) {
      print(e);
      return [Post.create("error", "error", [])];
    }
  }

  //open channel if it is null
  static ClientChannel? channel() {
    if (_channel == null) {
      _channel = ClientChannel('192.168.0.100', port: 50051, options: const ChannelOptions(credentials: ChannelCredentials.insecure()));
    }
    return _channel;
  }
}
