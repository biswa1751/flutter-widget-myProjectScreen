import 'package:flutter/material.dart';
import 'package:upwork_001_flutter_mpjs_screen/common_widgets/images.dart';
import 'package:upwork_001_flutter_mpjs_screen/common_widgets/my_projects_builder_widget.dart';
import 'package:upwork_001_flutter_mpjs_screen/common_widgets/theme_alert_dialog.dart';
import 'package:upwork_001_flutter_mpjs_screen/common_widgets/theme_app_bar.dart';
import 'package:upwork_001_flutter_mpjs_screen/common_widgets/theme_floating_action_button.dart';
import 'package:upwork_001_flutter_mpjs_screen/features/feature_project_management/models/page.dart';
import 'package:upwork_001_flutter_mpjs_screen/features/feature_project_management/models/project.dart';

class DesignUiScreen extends StatelessWidget {
  DesignUiScreen({Key? key}) : super(key: key);
  static const routeName = "/design_ui_screen";
  final projectModel =
      ProjectModel(id: 1234, title: 'NewProject1', pagesCount: 5, pages: [
    MiniPageModel(id: 1, title: 'id1', imgUrl: AppNetworkImages.emptyImage),
    MiniPageModel(id: 2, title: 'id1', imgUrl: AppNetworkImages.emptyImage),
    MiniPageModel(id: 3, title: 'id1', imgUrl: AppNetworkImages.emptyImage),
    MiniPageModel(id: 4, title: 'id1', imgUrl: AppNetworkImages.emptyImage),
    MiniPageModel(id: 5, title: 'id1', imgUrl: AppNetworkImages.emptyImage),
  ]);

  @override
  Widget build(BuildContext context) {
    final List<ProjectModel> projectModels = [projectModel, projectModel];
    return Scaffold(
      drawer: const Drawer(),
      appBar: const ThemeAppBar(title: 'My Projects'),
      body: MyProjectBuilderWidget(projectModels: projectModels),
      floatingActionButton: ThemeFloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) => const ThemeAlertDialog(projectId: 1234));
        },
      ),
    );
  }
}
