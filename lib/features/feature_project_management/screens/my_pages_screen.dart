import 'package:flutter/material.dart';

import '../../../constants/theme/custom_project_theme.dart';

class MyPagesScreen extends StatefulWidget {
  final int projectID;

  const MyPagesScreen({Key? key, required this.projectID}) : super(key: key);

  @override
  State<MyPagesScreen> createState() => _MyPagesScreenState();
}

class _MyPagesScreenState extends State<MyPagesScreen> {
  @override
  Widget build(BuildContext context) {
    CustomProjectTheme customProjectTheme =
        CustomProjectTheme.getCustomProjectThemeDefault();

    return Scaffold(
      appBar: AppBar(
        title: Text('projectID: ${widget.projectID}'),
      ),
      body: Container(
        color: customProjectTheme.backgroundColor,
      ),
    );
  }
}
