import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../models/models.dart';
import '../utils/constants.dart';

class FBCreateStoryCard extends StatelessWidget {
  final User loggedUser;

  const FBCreateStoryCard({
    super.key,
    required this.loggedUser,
  });

  @override
  Widget build(BuildContext context) {
    const cardWidth = 125.0;

    return Container(
      width: cardWidth,
      margin: const EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 245, 245, 245),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: CachedNetworkImage(
                imageUrl: loggedUser.imageUrl,
                height: 160,
                width: cardWidth,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 138,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 43,
                height: 43,
                decoration: BoxDecoration(
                  color: kLightPrimary,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 10,
            child: Text(
              'Create Story',
              style: kSemiBoldStyle,
            ),
          ),
        ],
      ),
    );
  }
}
