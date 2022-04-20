import '../../features/feature_project_management/models/format_size.dart';

class ConfigDefaultFormatSizes {
  static final List<FormatSizeModel> getDefaultFormatSizes = [
    FormatSizeModel(title: 'Android Huawei Nova 7 SE',  width: 360, height: 800),
    FormatSizeModel(title: 'Apple iPhone 12 Pro Max',  width: 428, height: 926),
    FormatSizeModel(title: 'Apple iPad Pro 12.9',  width: 1024, height: 768),
    FormatSizeModel(title: 'Web (large)',  width: 1920, height: 1080),
    FormatSizeModel(title: 'Web (common)',  width: 1366, height: 768),

    // {"name": "Android Huawei Nova 7 SE", "width": 360, "height": 800},
    // {"name": "Apple iPhone 12 Pro Max", "width": 428, "height": 926},
    // {"name": "Apple iPad Pro 12.9", "width": 1024, "height": 768},
    // {"name": "Web (large)", "width": 1920, "height": 1080},
    // {"name": "Web (common)", "width": 1366, "height": 768},
  ];
}
