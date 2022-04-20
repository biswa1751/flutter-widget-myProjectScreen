import 'package:flutter/material.dart';
import 'package:upwork_001_flutter_mpjs_screen/features/feature_project_management/screens/my_pages_screen.dart';

class ThemeAlertDialog extends StatelessWidget {
  const ThemeAlertDialog({Key? key, required this.projectId}) : super(key: key);
  final int projectId;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Rename Project'),
      content: const TextField(
        decoration: InputDecoration(labelText: 'ENTER NEW NAME'),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('CANCEL'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => MyPagesScreen(projectID: projectId)));
          },
          child: const Text('RENAME'),
        ),
      ],
    );
  }
}
