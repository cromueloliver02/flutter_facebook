import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../widgets/widgets.dart';
import '../utils/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
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
          ),
        ],
      ),
    );
  }
}
