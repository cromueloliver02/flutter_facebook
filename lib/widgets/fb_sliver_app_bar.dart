import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../widgets/widgets.dart';
import '../utils/constants.dart';

class FBSliverAppBar extends StatelessWidget {
  const FBSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    const tabBarHeight = 50.0;
    final screenSize = MediaQuery.of(context).size;

    return SliverAppBar(
      floating: true,
      pinned: true,
      // primary: true,
      // snap: true,
      backgroundColor: kLightSecondary,
      centerTitle: false,
      title: const Text(
        'facebook',
        style: TextStyle(
          color: kLightPrimary,
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
          letterSpacing: -1.2,
        ),
      ),
      actions: [
        FBCircleButton(
          iconData: Icons.add,
          onPressed: () {},
        ),
        FBCircleButton(
          iconData: Icons.search,
          onPressed: () {},
        ),
        FBCircleButton(
          iconData: MdiIcons.facebookMessenger,
          onPressed: () {},
        ),
      ],
      bottom: PreferredSize(
        preferredSize: Size(screenSize.width, tabBarHeight),
        child: const SizedBox(
          height: tabBarHeight,
          child: FBTabBar(),
        ),
      ),
    );
  }
}
