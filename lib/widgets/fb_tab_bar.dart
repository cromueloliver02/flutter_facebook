import 'package:flutter/material.dart';
import '../utils/constants.dart';

class FBTabBar extends StatelessWidget {
  const FBTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicator: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: kLightPrimary,
            width: 3,
          ),
        ),
      ),
      tabs: menuIcons
          .map((d) => Tab(
                icon: Icon(
                  d,
                  size: 30,
                  color: Colors.grey,
                ),
              ))
          .toList(),
    );
  }
}
