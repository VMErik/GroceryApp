import 'package:flutter/material.dart';

class OnBoardingSubtitle extends StatelessWidget {
  final String text;
  const OnBoardingSubtitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
                  'Get your groceries in as fast as one hour',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                  textAlign: TextAlign.center,
                );
  }
}