import 'package:flutter/material.dart';

class OnBoardingTitle extends StatelessWidget {
  final String text;
  const OnBoardingTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
                  text,
                  style: TextStyle(fontSize: 48, color: Colors.white, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                );
  }
}