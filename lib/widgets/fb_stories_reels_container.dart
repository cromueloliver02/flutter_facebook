import 'package:flutter/material.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';
import '../utils/constants.dart';
import '../data/data.dart';

class StoriesReelsContainer extends StatelessWidget {
  final User loggedUser;

  const StoriesReelsContainer({
    super.key,
    required this.loggedUser,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        color: Colors.white,
        height: 300,
        margin: const EdgeInsets.only(top: 10, bottom: 5),
        child: Column(
          children: [
            const DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 2),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TabBar(
                  indicator: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: kLightPrimary,
                        width: 3,
                      ),
                    ),
                  ),
                  tabs: [
                    _StoryReelTab(title: 'Stories'),
                    _StoryReelTab(title: 'Reels'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const ClampingScrollPhysics(),
                padding: const EdgeInsets.only(left: 11),
                scrollDirection: Axis.horizontal,
                itemCount: stories.length + 1,
                itemBuilder: (ctx, idx) {
                  if (idx == 0) {
                    return FBCreateStoryCard(loggedUser: loggedUser);
                  }

                  final story = stories[idx - 1];

                  return FBStoryCard(story: story);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StoryReelTab extends StatelessWidget {
  final String title;

  const _StoryReelTab({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        title,
        style: kSemiBoldStyle.copyWith(color: Colors.black54),
      ),
    );
  }
}
