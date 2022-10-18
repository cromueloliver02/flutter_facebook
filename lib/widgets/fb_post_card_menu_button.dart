import 'package:flutter/material.dart';

class FBPostCardMenuButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onPressed;

  const FBPostCardMenuButton({
    super.key,
    required this.iconData,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Icon(
        iconData,
        size: 25,
        color: Colors.black54,
      ),
    );
  }
}
