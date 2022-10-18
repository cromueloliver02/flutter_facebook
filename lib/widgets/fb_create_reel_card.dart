import 'package:flutter/material.dart';
import '../utils/constants.dart';

class FBCreateReelCard extends StatelessWidget {
  const FBCreateReelCard({super.key});

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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  kLightUpperGradient,
                  kLightLowerGradient,
                ],
              ),
            ),
          ),
          Positioned(
            top: 60,
            child: Stack(
              children: [
                Container(
                  width: 75,
                  height: 75,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: ShaderMask(
                    shaderCallback: (rect) => const LinearGradient(colors: [
                      kLightUpperGradient,
                      kLightLowerGradient,
                    ]).createShader(rect),
                    child: const Icon(
                      Icons.video_library_sharp,
                      size: 38,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 25,
                    height: 25,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: kLightLowerGradient,
                        width: 2,
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: kLightPrimary,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Create reel',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: kSemiBoldStyle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
