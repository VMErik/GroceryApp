import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String texto;
  final bool obscure;
  const MyText({super.key, required this.texto, this.obscure = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
                    decoration: InputDecoration(
                      labelText: texto, // Nombre del campo que flota
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  );
  }
}