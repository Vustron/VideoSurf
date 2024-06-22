import 'package:video_surf/cores/helpers/methods.dart';
import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String image;
  final bool haveColor;
  const ImageButton({
    Key? key,
    required this.onPressed,
    required this.image,
    required this.haveColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(left: 4, right: 4),
        child: Container(
          padding: const EdgeInsets.only(top: 7.6, bottom: 7.6),
          decoration: BoxDecoration(
            color: haveColor ? softBlueGreyBackGround : null,
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Image.asset(
            "assets/icons/$image",
            height: 23,
          ),
        ),
      ),
    );
  }
}
