import 'package:flutter/material.dart';

class FBPostCardReaction extends StatelessWidget {
  final IconData iconData;
  final Color color;

  const FBPostCardReaction({
    super.key,
    required this.iconData,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Icon(
        iconData,
        color: Colors.white,
        size: 13,
      ),
    );
  }
}
