import 'package:flutter/material.dart';
import 'package:upwork_001_flutter_mpjs_screen/constants/theme/custom_project_theme.dart';

class ThemeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const ThemeAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor:
          CustomProjectTheme.getCustomProjectThemeDefault().appBarColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(54.0);
}
