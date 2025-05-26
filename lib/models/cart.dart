import 'dart:ffi';

class Cart{
  final String name;
  final String presentation;
  final String imageUrl;
  final int quantity;
  final double price;
  Cart({required this.name, required this.presentation, required this.imageUrl, required this.quantity, required this.price});
}