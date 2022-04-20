class FormatSizeModel {
  /// title FormatSizeModel
  String title;

  int width;
  int height;

  FormatSizeModel({
    required this.title,
    required this.width,
    required this.height,
  });

  static FormatSizeModel fromJson(jsonData) {
    FormatSizeModel output = FormatSizeModel(
      title: jsonData['title'],
      width: jsonData['width'],
      height: jsonData['height'],
    );

    return output;
  }
}
