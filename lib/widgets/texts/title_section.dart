import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  final String text ;
  const TitleSection({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
    );
  }
}
