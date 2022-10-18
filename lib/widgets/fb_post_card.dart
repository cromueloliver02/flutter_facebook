import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
            padding: const EdgeInsets.only(top: 5, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    post.caption,
                  ),
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
                style: kBoldStyle.copyWith(fontSize: 18),
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
                  Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey[600],
                      shape: BoxShape.circle,
                    ),
                  ),
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
          FBPostCardButton(
            iconData: Icons.more_horiz,
            onPressed: () {},
          ),
          const SizedBox(width: 20),
          FBPostCardButton(
            iconData: Icons.close,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
