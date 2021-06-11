import 'package:grpc/grpc.dart';
import 'package:grpc_client/models/post.dart';
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

  static Future<Post?> searchPostById(int id) async {
    final stub = PostServiceClient(WebService.channel()!);

    try {
      final response = await stub.fetchPostDetails(FetchPostDetails_Request()..postId = id);

      return Post.create(response.title, response.content, response.pictureBlob);
    } catch (e) {
      print(e);
      return null;
    }
  }

  static Future<List<Post?>> fetchKPosts(int pageNumber) async {
    final stub = PostServiceClient(WebService.channel()!);
    List<Post> posts = [];
    try {
      print("web is triggered");
      final response = await stub.fetchPosts(FetchPostsByPage_Request()..pageNumber = pageNumber);
      if (response.success) {
        for (int i = 0; i < response.title.length; i++) {
          posts.add(Post.create(response.title[i], response.content[i], response.pictureBlob[i]));
        }
      }
      else{
        posts.add(Post.create("none", "none", []));
      }
      return posts;
    } catch (e) {
      print(e);
      posts.add(Post.create(e.toString(), e.toString(), []));
      return  posts;
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
