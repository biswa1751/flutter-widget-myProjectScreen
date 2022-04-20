import 'dart:convert' as convert;
import 'package:flutter/services.dart' show rootBundle;

// import 'dart:io' as Io;

// import 'package:path/path.dart';

class MyHttpAPI {
  // static Future<Map<String, dynamic>> upload({
  //   required String url,
  //   required String pathFile,
  //   required String filename,
  //   required Map<String, dynamic> moreParams,
  // }) async {
  //   return {id:1,...};
  // }

  // static Future<String?> download(String url, String pathSave) async {
  //   return 'err: ...';
  //   return null;
  // }

  static Future<Map<String, dynamic>> post(
      String url, Map<String, dynamic> jsonPostParams) async {
    String responseBody = await rootBundle.loadString(url);

    await Future.delayed(Duration(seconds: 1));
    var jsonResponse = await convert.jsonDecode(responseBody);
    return jsonResponse;
  }

  static Future<Map<String, dynamic>> get(String url) async {
    String responseBody = await rootBundle.loadString(url);

    await Future.delayed(Duration(seconds: 1));
    var jsonResponse = await convert.jsonDecode(responseBody);
    return jsonResponse;
  }

  Future<String> getAuthenticate({
    required String username,
    required String password,
  }) async {
    await Future.delayed(Duration(seconds: 1));
    return 'token';
  }
}
