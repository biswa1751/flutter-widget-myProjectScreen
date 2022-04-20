import 'package:flutter/material.dart';
import 'package:upwork_001_flutter_mpjs_screen/constants/theme/custom_project_theme.dart';
import 'package:upwork_001_flutter_mpjs_screen/features/feature_project_management/screens/my_pages_screen.dart';

class ThemeAlertDialog extends StatefulWidget {
  const ThemeAlertDialog({Key? key, required this.projectId}) : super(key: key);
  final int projectId;

  @override
  State<ThemeAlertDialog> createState() => _ThemeAlertDialogState();
}

class _ThemeAlertDialogState extends State<ThemeAlertDialog> {
  @override
  Widget build(BuildContext context) {
    final color =
        CustomProjectTheme.getCustomProjectThemeDefault().backgroundColor;
    return AlertDialog(
      title: const Text('Rename Project'),
      content: TextField(
        cursorColor: color,
        decoration: InputDecoration(
          labelText: 'ENTER NEW NAME',
          focusColor: Colors.red,
          border: UnderlineInputBorder(borderSide: BorderSide(color: color!)),
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: color)),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: color)),
          labelStyle:
              Theme.of(context).textTheme.titleMedium!.copyWith(color: color),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'CANCEL',
            style: Theme.of(context).textTheme.button!.copyWith(color: color),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => MyPagesScreen(projectID: widget.projectId)));
          },
          child: Text(
            'RENAME',
            style: Theme.of(context).textTheme.button!.copyWith(color: color),
          ),
        ),
      ],
    );
  }
}
