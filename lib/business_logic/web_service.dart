import 'package:grpc/grpc.dart';
import 'package:grpc_client/generated_files/posts.pbgrpc.dart';

class WebService {
  static ClientChannel _channel;

  static Future<bool> post(String title, String content, List<int> pictureBlob) async {
    final stub = PostServiceClient(WebService.channel());
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

  static Future<void> fetchSinglePost(int id) async{
    final stub = PostServiceClient(WebService.channel());

    try{
      final response = await stub.fetchPostDetails(FetchPostDetails_Request()
      ..postId = id
      );
      print(response.success);
      print(response.title);
      print(response.content);
      print(response.pictureBlob);

    }
    catch(e){
      print(e);
    }
  }

  //open channel if it is null
  static ClientChannel channel() {
    if (_channel == null) {
      _channel = ClientChannel('192.168.0.101', port: 50051, options: const ChannelOptions(credentials: ChannelCredentials.insecure()));
    }
    return _channel;
  }
}
