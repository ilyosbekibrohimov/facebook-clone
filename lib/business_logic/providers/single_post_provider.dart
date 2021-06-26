import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:grpc_client/business_logic/services/web_service.dart';

class PostProvider extends ChangeNotifier {


  Future<bool> post(String title, String content, List<int> pictureBlob) async {

    bool posted = await WebService.post(title, content, pictureBlob);

    notifyListeners();
    return posted;
  }





}
