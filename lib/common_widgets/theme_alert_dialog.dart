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
    final customProjectTheme =
        CustomProjectTheme.getCustomProjectThemeDefault();
    return AlertDialog(
      title: const Text('Rename Project'),
      content: TextField(
        cursorColor: customProjectTheme.textFieldBackground,
        decoration: InputDecoration(
          labelText: 'ENTER NEW NAME',
          border: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: customProjectTheme.textFieldBackground!)),
          enabledBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: customProjectTheme.textFieldBackground!)),
          focusedBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: customProjectTheme.textFieldBackground!)),
          labelStyle: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: customProjectTheme.hintTextOnTextField),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'CANCEL',
            style: Theme.of(context)
                .textTheme
                .button!
                .copyWith(color: customProjectTheme.btnAColor),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => MyPagesScreen(projectID: widget.projectId)));
          },
          child: Text(
            'RENAME',
            style: Theme.of(context)
                .textTheme
                .button!
                .copyWith(color: customProjectTheme.btnBColor),
          ),
        ),
      ],
    );
  }
}
