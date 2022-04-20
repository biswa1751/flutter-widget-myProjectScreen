import 'package:flutter/material.dart';

import '../../../constants/theme/custom_project_theme.dart';
import '../../../common_widgets/sidebar_widget.dart';

import '../../../features/feature_project_management/data/network/project_api.dart';
import '../../../features/feature_project_management/models/project.dart';

import '../widgets/appbar_widget.dart';
import '../widgets/dialog_input_single.dart';

import 'my_pages_screen.dart';

class MyProjectsScreen extends StatefulWidget {
  const MyProjectsScreen({Key? key}) : super(key: key);

  @override
  State<MyProjectsScreen> createState() => _MyProjectsScreenState();
}

class _MyProjectsScreenState extends State<MyProjectsScreen> {
  bool _isLoading = true;
  List<ProjectModel> _dataMyProjects = [];

  @override
  void initState() {
    super.initState();

    loadMyProjects();
  }

  // load-data
  Future<void> loadMyProjects() async {
    final dataMyProjects = await ProjectAPI.getMyProjects();

    setState(() {
      // loaded-data
      _isLoading = false;
      _dataMyProjects = dataMyProjects;
    });
  }

  void goToMyPagesScreen(int projectID) {
    // GoTo View-myPages-of-newProject

    // validate-projectID
    if (projectID == null) {
      // TODO: snakBar alert "something-wrong please Create again."
      return;
    }

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => MyPagesScreen(projectID: projectID),
      ),
    );
  }

  // mockup--add-newProject
  Future<void> createNewProject({required title}) async {
    final dataMyProjects =
        await ProjectAPI.createNewProject(NewFormProjectModel(title: title));

    // validate-res
    if (dataMyProjects == null) {
      // TODO: snakBar alert "something-wrong please Create again."
      return;
    }

    goToMyPagesScreen(dataMyProjects.id);
  }

  @override
  Widget build(BuildContext context) {
    CustomProjectTheme customProjectTheme =
        CustomProjectTheme.getCustomProjectThemeDefault();

    return Scaffold(
      backgroundColor: customProjectTheme.backgroundColor,
      // TODO: appbar
      // appBar: AppbarWidget(),
      // appBar: AppBar(
      //   // TODO: make-appBar
      //   backgroundColor: customProjectTheme.appBarColor,
      //   title: Text('my_projects...'),
      // ),

      drawer: Drawer(
        child: SideBarWidget(),
      ),
      body: Container(
        color: customProjectTheme.backgroundColor,
        // TODO: Loading
        // TODO: show-null
        // TODO: ListBuilder(MyProject-item)
        // TODO: widget->MyProject-item
        // TODO: on-click->MyProject-item->GoTo-MyPagesScreen(projectID: ...);
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'btn1-createNewProject()',
        onPressed: () async {
          // TODO: show-popup Widget-AlertDialog and fix-UI
          final TextEditingController textEditingController =
              TextEditingController();
          String projectNameLocal = await showDialog(
            context: context,
            builder: (context) {
              return MyDialogSingleInput(
                textEditingController: textEditingController,
                title: 'Enter project-name:',
                labelText: 'Enter the project-name',
                errorText: 'Value Can\'t Be Empty',
                actionButtonText: 'Generate',
              );
            },
          );
          print(projectNameLocal);
          if (projectNameLocal == null) {
            return;
          }

          createNewProject(title: textEditingController.text);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
