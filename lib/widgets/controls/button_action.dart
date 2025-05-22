import 'package:flutter/material.dart';

class MyActionButton extends StatelessWidget {

  final String text;
  final Function() onPressed;

  const MyActionButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF53B175),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(text, style: TextStyle(fontSize: 18)),
                  ),
                ),
              );
  }
}