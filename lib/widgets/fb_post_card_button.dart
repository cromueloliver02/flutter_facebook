import 'package:flutter/material.dart';

class FBPostCardButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onPressed;

  const FBPostCardButton({
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
