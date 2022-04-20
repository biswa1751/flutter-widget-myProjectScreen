class PageModel {
  /// id page
  int id;

  /// title page
  String title;

  /// date-created
  String createdAt;

  /// date-updated
  String updatedAt;

  /// image-url
  String imgUrl;

  PageModel({
    required this.id,
    required this.title,
    required this.imgUrl,
    required this.createdAt,
    required this.updatedAt,
  });

  static PageModel fromJson(jsonData) {
    PageModel output = PageModel(
      id: jsonData['id'],
      title: jsonData['title'],
      imgUrl: jsonData['imgUrl'],
      createdAt: jsonData['created_at'],
      updatedAt: jsonData['updated_at'],
    );

    return output;
  }
}

class MiniPageModel {
  /// id page
  int id;

  /// title page
  String title;

  /// image-url
  String imgUrl;

  MiniPageModel({
    required this.id,
    required this.title,
    required this.imgUrl,
  });

  static MiniPageModel fromJson(jsonData) {
    MiniPageModel output = MiniPageModel(
      id: jsonData['id'],
      title: jsonData['title'],
      imgUrl: jsonData['imgUrl'],
    );

    return output;
  }
}
