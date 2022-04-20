import 'package:flutter/material.dart';
import 'package:upwork_001_flutter_mpjs_screen/common_widgets/app_network_image.dart';
import 'package:upwork_001_flutter_mpjs_screen/constants/theme/custom_project_theme.dart';
import 'package:upwork_001_flutter_mpjs_screen/features/feature_project_management/models/project.dart';

class MyProjectWidget extends StatelessWidget {
  const MyProjectWidget({Key? key, required this.projectModel})
      : super(key: key);
  final ProjectModel projectModel;
  @override
  Widget build(BuildContext context) {
    final pages = projectModel.pages;
    return Card(
      elevation: 3,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    projectModel.title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  // TODO : should i add this text
                  Text('6 Documents',
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
          ),
          AppNetworkImage(
            imageUrl: pages.first?.imgUrl,
            height: 300,
            width: double.maxFinite,
          ),
          Row(
            children: List.generate(
              4,
              (index) => Expanded(
                child: index + 1 > pages.length - 1
                    ? Container(
                        height: 50,
                        color: CustomProjectTheme.getCustomProjectThemeDefault()
                            .previewCardBackgroundColor,
                      )
                    : Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.2),
                                width: 0.5)),
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
              ),
            ),
          )
        ],
      ),
    );
  }
}
