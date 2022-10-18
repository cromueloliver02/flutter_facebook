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
      color: kLightSecondary,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: _FBPostCardHeader(post: post),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: post.caption != null ? 5 : 0,
              bottom: post.imageUrl != null ? 0 : 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (post.caption != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      post.caption!,
                      style: kRegularStyle,
                    ),
                  ),
                if (post.imageUrl != null) ...[
                  const SizedBox(height: 10),
                  CachedNetworkImage(
                    imageUrl: post.imageUrl!,
                    width: double.infinity,
                    fit: BoxFit.contain,
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
    return Row(
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
        const Divider(
          thickness: 1,
          height: 0,
        ),
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
