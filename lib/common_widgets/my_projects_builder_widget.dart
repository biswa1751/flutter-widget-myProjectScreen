import 'package:flutter/material.dart';
import 'package:upwork_001_flutter_mpjs_screen/common_widgets/empty_state.dart';
import 'package:upwork_001_flutter_mpjs_screen/common_widgets/loading_card.dart';
import 'package:upwork_001_flutter_mpjs_screen/common_widgets/my_project_widget.dart';
import 'package:upwork_001_flutter_mpjs_screen/features/feature_project_management/models/project.dart';

class MyProjectBuilderWidget extends StatelessWidget {
  const MyProjectBuilderWidget({Key? key, required this.projectModels})
      : super(key: key);
  final List<ProjectModel>? projectModels;
  @override
  Widget build(BuildContext context) {
    if (projectModels == null) {
      return const LoadingCard();
    } else if (projectModels?.isEmpty ?? false) {
      return const EmptyState(
        text: 'No Projects',
        subtitle: 'You have no projects',
      );
    } else {
      return ListView(
        children: (projectModels ?? [])
            .map((projectModel) => MyProjectWidget(projectModel: projectModel))
            .toList(),
      );
    }
  }
}
