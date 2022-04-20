import '../../../constants/theme/custom_project_theme.dart';
import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CustomProjectTheme customProjectTheme =
        CustomProjectTheme.getCustomProjectThemeDefault();

    return AppBar(
      // TODO: make-appBar
      backgroundColor: customProjectTheme.appBarColor,
      title: Text('my_projects...'),
    );
  }
}
