import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:grpc_client/business_logic/services/web_service.dart';
import 'package:grpc_client/utils/settings.dart';

class PostProvider extends ChangeNotifier {


  Future<bool> createPost(String title, String content, List<int> pictureBlob) async {

    bool  posted = false;
      posted = await WebService.post(title, content, pictureBlob, (preferences!.getString("user_id")??null)!);
      notifyListeners();

    return posted;
  }







}
