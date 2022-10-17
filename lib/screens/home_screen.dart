import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import '../utils/constants.dart';
import '../data/data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: menuIcons.length,
      child: const Scaffold(
        body: CustomScrollView(
          slivers: [
            FBSliverAppBar(),
            SliverToBoxAdapter(
              child: FBCreatePostContainer(loggedUser: loggedUser),
            ),
            SliverToBoxAdapter(
              child: StoriesReelsContainer(loggedUser: loggedUser),
            ),
          ],
        ),
      ),
    );
  }
}
