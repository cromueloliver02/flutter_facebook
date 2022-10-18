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
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const FBSliverAppBar(),
            const SliverToBoxAdapter(
              child: FBCreatePostContainer(loggedUser: loggedUser),
            ),
            const SliverToBoxAdapter(
              child: StoriesReelsContainer(loggedUser: loggedUser),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: posts.length,
                (ctx, idx) {
                  final post = posts[idx];

                  return FBPostCard(post: post);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
