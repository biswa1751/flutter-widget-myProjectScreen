import 'dart:convert' as convert;

import '../../../../features/feature_project_management/models/format_size.dart';
// import '../../../../utils/http/mockup_api.dart';

class FormatSizeAPI {
  static Future<List<FormatSizeModel>> moreFormatSizes() async {
//
    await Future.delayed(Duration(seconds: 1));
    List<FormatSizeModel> dataMyProjects = [];

    String url = 'assets/data/json-mockup/mock-res--projects.json';
    var jsonResponse = convert.jsonDecode(convert.jsonEncode({
      "data": [
        {
          'title': 'custom-size--vary-height',
          'width': 222,
          'height': 1234,
        },
        {
          'title': 'custom-size--vary-width',
          'width': 5678,
          'height': 555,
        },
      ],
    }));

    if (jsonResponse['data'] != null) {
      dataMyProjects = List<FormatSizeModel>.from(
          jsonResponse['data'].map((model) => FormatSizeModel.fromJson(model)));
    }

    return dataMyProjects;
  }

  static Future<bool> saveNewFormatSize(FormatSizeModel newFormatSize)async {
    // ...
    

    return true;
  }
}
