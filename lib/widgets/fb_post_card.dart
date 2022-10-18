import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';
import '../utils/constants.dart';

class FBPostCard extends StatelessWidget {
  final Post post;

  const FBPostCard({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          _FBPostCardHeader(post: post),
          Padding(
            padding: EdgeInsets.only(
              top: 5,
              bottom: post.imageUrl != null ? 0 : 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    10,
                    5,
                    10,
                    post.imageUrl == null ? 0 : 5,
                  ),
                  child: Text(post.caption),
                ),
                if (post.imageUrl != null) ...[
                  const SizedBox(height: 10),
                  CachedNetworkImage(
                    imageUrl: post.imageUrl!,
                    height: 550,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ],
              ],
            ),
          ),
          _FBPostCardFooter(post: post),
        ],
      ),
    );
  }
}

class _FBPostCardHeader extends StatelessWidget {
  final Post post;

  const _FBPostCardHeader({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileAvatar(imageUrl: post.user.imageUrl),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.user.name,
                style: kSemiBoldStyle.copyWith(fontSize: 18),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    post.timeAgo,
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(width: 10),
                  const FBPostCardDot(),
                  const SizedBox(width: 10),
                  Icon(
                    Icons.public,
                    size: 15,
                    color: Colors.grey[600],
                  )
                ],
              ),
            ],
          ),
          const Spacer(),
          FBPostCardMenuButton(
            iconData: Icons.more_horiz,
            onPressed: () {},
          ),
          const SizedBox(width: 20),
          FBPostCardMenuButton(
            iconData: Icons.close,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class _FBPostCardFooter extends StatelessWidget {
  final Post post;

  const _FBPostCardFooter({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _FBPostCardStatisticBar(post: post),
        const Divider(thickness: 1),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              FBPostCardActionButton(
                title: 'Like',
                iconData: MdiIcons.thumbUpOutline,
                iconSize: 20,
              ),
              FBPostCardActionButton(
                title: 'Comment',
                iconData: MdiIcons.commentOutline,
                iconSize: 20,
              ),
              FBPostCardActionButton(
                title: 'Share',
                iconData: MdiIcons.shareOutline,
                iconSize: 25,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _FBPostCardStatisticBar extends StatelessWidget {
  const _FBPostCardStatisticBar({
    Key? key,
    required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          const FBPostCardReaction(
            iconData: Icons.thumb_up,
            color: kLightPrimary,
          ),
          const FBPostCardReaction(
            iconData: Icons.favorite,
            color: Color.fromARGB(255, 248, 76, 64),
          ),
          const SizedBox(width: 5),
          Text(
            '${post.likes}',
            style: TextStyle(color: Colors.grey[600]),
          ),
          const Spacer(),
          Text(
            '${post.comments} Comments',
            style: TextStyle(color: Colors.grey[600]),
          ),
          const SizedBox(width: 10),
          const FBPostCardDot(),
          const SizedBox(width: 10),
          Text(
            '${post.shares} Shares',
            style: TextStyle(color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
