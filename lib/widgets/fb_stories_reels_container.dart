import 'package:flutter/material.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';
import '../utils/constants.dart';
import '../data/data.dart';

class StoriesReelsContainer extends StatefulWidget {
  final User loggedUser;

  const StoriesReelsContainer({
    super.key,
    required this.loggedUser,
  });

  @override
  State<StoriesReelsContainer> createState() => _StoriesReelsContainerState();
}

class _StoriesReelsContainerState extends State<StoriesReelsContainer> {
  final _sliders = const [
    _StoriesContainer(),
    _ReelsContainer(),
  ];
  var _selectedIdx = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        color: kLightSecondary,
        height: 300,
        margin: const EdgeInsets.only(top: 10, bottom: 5),
        child: Column(
          children: [
            DecoratedBox(
              decoration: const BoxDecoration(
                color: kLightSecondary,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 2),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TabBar(
                  indicator: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: kLightPrimary,
                        width: 3,
                      ),
                    ),
                  ),
                  tabs: const [
                    _StoryReelTab(title: 'Stories'),
                    _StoryReelTab(title: 'Reels'),
                  ],
                  onTap: (idx) => setState(() => _selectedIdx = idx),
                ),
              ),
            ),
            Expanded(
              child: IndexedStack(
                index: _selectedIdx,
                children: _sliders,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StoriesContainer extends StatelessWidget {
  const _StoriesContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      padding: const EdgeInsets.only(left: 11),
      scrollDirection: Axis.horizontal,
      itemCount: stories.length + 2,
      itemBuilder: (ctx, idx) {
        if (idx == 0) {
          return const FBMusicStoryCard();
        }

        if (idx == 1) {
          return const FBCreateStoryCard(loggedUser: loggedUser);
        }

        final story = stories[idx - 2];

        return FBStoryCard(story: story);
      },
    );
  }
}

class _ReelsContainer extends StatelessWidget {
  const _ReelsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      padding: const EdgeInsets.only(left: 11),
      scrollDirection: Axis.horizontal,
      itemCount: reels.length + 1,
      itemBuilder: (ctx, idx) {
        if (idx == 0) {
          return const FBCreateReelCard();
        }

        final reel = reels[idx - 1];

        return FBReelCard(reel: reel);
      },
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
