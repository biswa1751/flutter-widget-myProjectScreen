import 'package:flutter/material.dart';
import 'package:upwork_001_flutter_mpjs_screen/common_widgets/images.dart';

class EmptyState extends StatelessWidget {
  final String text, subtitle;
  final String imageUrl;
  final Widget? bottomWidget;
  const EmptyState({
    Key? key,
    required this.text,
    this.imageUrl = AppNetworkImages.emptyImage,
    this.bottomWidget,
    required this.subtitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 250,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Image.network(
                imageUrl,
                height: 250,
                width: 250,
              ),
            ),
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.titleSmall,
              textAlign: TextAlign.center,
            ),
            if (bottomWidget != null)
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: bottomWidget!,
              )
          ],
        ),
      ),
    );
  }
}
