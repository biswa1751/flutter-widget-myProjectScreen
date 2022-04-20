import 'dart:convert' as convert;

import '../../../../features/feature_project_management/models/project.dart';
import '../../../../utils/http/mockup_api.dart';

class ProjectAPI {
  static Future<List<ProjectModel>> getMyProjects() async {
    List<ProjectModel> dataMyProjects = [];

    String url = 'assets/data/json-mockup/mock-res--projects.json';
    var jsonResponse = await MyHttpAPI.get(url);
    if (jsonResponse['data'] != null) {
      dataMyProjects = List<ProjectModel>.from(
          jsonResponse['data'].map((model) => ProjectModel.fromJson(model)));

      // ProjectModel myProject = ProjectModel(
      //   id: jsonResponse['data']['id'],
      //   title: jsonResponse['data']['title'],
      //   pages: jsonResponse['data']['pages'],
      // );
      // dataMyProjects.add(myProject);
    }

    return dataMyProjects;
  }

  static Future<ProjectModel?> createNewProject(
      NewFormProjectModel newProject) async {
    ProjectModel? myNewProjects = null;

    // ... API-post newProject
    String url = 'assets/data/json-mockup/mock-res--projects.json';
    // var jsonResponse = await MyHttpAPI.get(url);
    var jsonResponse = convert.jsonDecode(convert.jsonEncode({
      "data": {"id": 999, "title": "custom-size--vary-height", "pages": []},
    }));

    if (jsonResponse['data'] != null) {
      myNewProjects = ProjectModel.fromJson(jsonResponse['data']);
    }

    return myNewProjects;
  }

  // static Future<String?> delProject(
  //     int projectID) async {
  //       // ...

  //       // return 'err: ...';
  //       return null;
  // }

  // static Future<Map<String, dynamic>> addNewProject() async {
  //   String url = 'assets/data/json-mockup/mock-res--projects.json';
  //   var jsonResponse = MyHttpAPI.get(url);
  //   return jsonResponse;
  // }
}
