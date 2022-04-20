import 'page.dart';

class ProjectModel {
  /// id project
  int id;

  /// title project
  String title;

  /// hasMany->pages_count
  int pagesCount;

  /// hasMany->pages
  List<MiniPageModel?> pages;

  ProjectModel({
    required this.id,
    required this.title,
    required this.pagesCount,
    required this.pages,
  });

  static ProjectModel fromJson(jsonData) {
    List<MiniPageModel> listPages = [];
    if (jsonData['pages'] != null) {
      List<MiniPageModel>.from(
          jsonData['pages'].map((model) => MiniPageModel.fromJson(model)));
    }
    ProjectModel output = ProjectModel(
      id: jsonData['id'],
      title: jsonData['title'],
      pagesCount: jsonData['pages_count'],
      pages: listPages,
    );

    return output;
  }
}

class NewFormProjectModel {
  /// title project
  String title;

  NewFormProjectModel({
    required this.title,
  });
}
