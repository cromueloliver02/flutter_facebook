import 'package:flutter/material.dart';

class FBCircleButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onPressed;

  const FBCircleButton({
    super.key,
    required this.iconData,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.all(6),
        height: 38,
        width: 38,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          shape: BoxShape.circle,
        ),
        child: Icon(
          iconData,
          size: 30,
          color: Colors.black,
        ),
      ),
    );
  }
}
