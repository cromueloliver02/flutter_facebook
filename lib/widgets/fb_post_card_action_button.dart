import 'package:flutter/material.dart';
import '../utils/constants.dart';

class FBPostCardActionButton extends StatelessWidget {
  final String title;
  final IconData iconData;
  final double iconSize;

  const FBPostCardActionButton({
    super.key,
    required this.title,
    required this.iconData,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Icon(
            iconData,
            size: iconSize,
            color: Colors.grey[600],
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: kRegularStyle.copyWith(
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}
