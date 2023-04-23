import 'package:flutter/material.dart';

class SectionBar extends StatelessWidget {
  const SectionBar({
    super.key,
    required this.title,
    this.action = "view more",
  });

  final String title;
  final String action;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleLarge),
        Text(action,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: Colors.white)),
      ],
    );
  }
}
