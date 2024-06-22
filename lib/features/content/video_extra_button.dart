import 'package:VideoSurf/cores/helpers/methods.dart';
import 'package:flutter/material.dart';

class VideoExtraButton extends StatelessWidget {
  final String text;
  final IconData iconData;
  const VideoExtraButton({
    Key? key,
    required this.text,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 3,
      ),
      decoration: const BoxDecoration(
        color: softBlueGreyBackGround,
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Row(
        children: [
          Icon(iconData),
          const SizedBox(width: 6),
          Text(text),
        ],
      ),
    );
  }
}
