import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.start,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 18,
      ),
    );
  }
}
//'Cilinary holidays for food lovers'

class DescribtionText extends StatelessWidget {
  const DescribtionText({super.key, required this.descrebtion});
  final String descrebtion;
  @override
  Widget build(BuildContext context) {
    return Text(
      descrebtion,
      textAlign: TextAlign.start,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 12,
      ),
    );
  }
}
// '''check out the top during soats in town'''