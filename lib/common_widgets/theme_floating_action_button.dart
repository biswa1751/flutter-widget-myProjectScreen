import 'package:flutter/material.dart';
import 'package:upwork_001_flutter_mpjs_screen/constants/theme/custom_project_theme.dart';

class ThemeFloatingActionButton extends StatelessWidget {
  const ThemeFloatingActionButton(
      {Key? key, required this.onPressed, this.child})
      : super(key: key);
  final VoidCallback onPressed;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor:
          CustomProjectTheme.getCustomProjectThemeDefault().backgroundColor,
      child: child ?? const Icon(Icons.add),
    );
  }
}
