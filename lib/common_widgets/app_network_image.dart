import 'package:flutter/material.dart';
import 'package:upwork_001_flutter_mpjs_screen/constants/theme/custom_project_theme.dart';

class AppNetworkImage extends StatelessWidget {
  final String? imageUrl;
  final double width;
  final double? height;
  final String? text;
  const AppNetworkImage({
    Key? key,
    this.imageUrl,
    this.width = 80,
    this.height = 80,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return imageUrl == null || (imageUrl?.isEmpty ?? true)
        ? Container(
            height: height,
            width: width,
            color: CustomProjectTheme.getCustomProjectThemeDefault()
                .backgroundColor,
          )
        : Image.network(
            imageUrl!,
            height: height,
            width: width,
            fit: BoxFit.cover,
          );
  }
}
