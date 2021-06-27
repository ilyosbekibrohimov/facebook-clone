import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:grpc_client/business_logic/services/web_service.dart';
import 'package:grpc_client/utils/settings.dart';

class PostProvider extends ChangeNotifier {


  Future<bool> post(String title, String content, List<int> pictureBlob) async {

    bool  posted = false;
    getSharedPreferences().then((value) async {
      posted = await WebService.post(title, content, pictureBlob, (value!.getString("user_id")??null)!);
      notifyListeners();
    });
    return posted;
  }





}
