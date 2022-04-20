import 'package:flutter/material.dart';
import 'package:upwork_001_flutter_mpjs_screen/common_widgets/app_network_image.dart';
import 'package:upwork_001_flutter_mpjs_screen/features/feature_project_management/models/project.dart';

class MyProjectWidget extends StatelessWidget {
  const MyProjectWidget({Key? key, required this.projectModel})
      : super(key: key);
  final ProjectModel projectModel;
  @override
  Widget build(BuildContext context) {
    final pages = projectModel.pages;
    return Column(
      children: <Widget>[
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(projectModel.title),
          ),
        ),
        AppNetworkImage(
          imageUrl: pages.first?.imgUrl,
          height: 300,
          width: double.maxFinite,
        ),
        Row(
          children: List.generate(
              pages.length > 4 ? 4 : pages.length - 1,
              (index) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: () {
                          debugPrint(pages[index]?.id.toString());
                        },
                        child: AppNetworkImage(
                          imageUrl: pages[index + 1]?.imgUrl,
                          height: 50,
                        ),
                      ),
                    ),
                  )),
        )
      ],
    );
  }
}
