import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  final List<dynamic> items;
  final int crossAxisCount;
  final double spacing;
  final Widget Function(BuildContext context, int index) itemBuilder;

  const CustomGridView({
    Key? key,
    required this.items,
    required this.itemBuilder,
    this.crossAxisCount = 2,
    this.spacing = 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(spacing),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(), // Scroll parent থেকে হবে
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: spacing,
        mainAxisSpacing: spacing,
      ),
      itemCount: items.length,
      itemBuilder: itemBuilder,
    );
  }
}
