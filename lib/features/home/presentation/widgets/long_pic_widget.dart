import 'package:flutter/material.dart';
import 'package:tripstick/core/common/button_widget.dart';

class LontPicWidget extends StatelessWidget {
  const LontPicWidget(
      {super.key,
      required this.right,
      required this.height,
      required this.assetName,
      required this.title,
      required this.descrebtion,
      required this.buttontext,
      required this.onPressed});
  final double? right;
  final double? height;
  final String assetName;
  final String title;
  final String descrebtion;
  final String buttontext;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: height,
          child: Image.network(
            assetName,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: right,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  descrebtion,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 12),
                ButtonWidget(
                  onPressed: onPressed,
                  text: buttontext,
                  color: Colors.white,
                  textcolor: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
