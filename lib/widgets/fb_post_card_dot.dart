import 'package:flutter/material.dart';

class FBPostCardDot extends StatelessWidget {
  const FBPostCardDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 5,
      height: 5,
      decoration: BoxDecoration(
        color: Colors.grey[600],
        shape: BoxShape.circle,
      ),
    );
  }
}
