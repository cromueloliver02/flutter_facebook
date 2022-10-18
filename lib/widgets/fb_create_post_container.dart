import 'package:flutter/material.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';
import '../utils/constants.dart';

class FBCreatePostContainer extends StatelessWidget {
  final User loggedUser;

  const FBCreatePostContainer({
    super.key,
    required this.loggedUser,
  });

  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide(
        width: 1,
        color: Colors.grey,
      ),
    );

    return Container(
      color: Colors.white,
      height: 70,
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          ProfileAvatar(imageUrl: loggedUser.imageUrl),
          const SizedBox(width: 10),
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'What\'s on your mind?',
                contentPadding: EdgeInsets.only(left: 20),
                border: borderStyle,
                focusedBorder: borderStyle,
                enabledBorder: borderStyle,
                disabledBorder: borderStyle,
                errorBorder: borderStyle,
                hintStyle: kRegularStyle,
              ),
            ),
          ),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                Icons.photo_library,
                color: Colors.green,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
