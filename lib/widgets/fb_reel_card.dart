import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../models/models.dart';

class FBReelCard extends StatelessWidget {
  final Reel reel;

  const FBReelCard({
    super.key,
    required this.reel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125.0,
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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: CachedNetworkImage(
          imageUrl: reel.imageUrl,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
