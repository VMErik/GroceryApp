import 'package:flutter/material.dart';
import 'package:groceriesapp/models/cart.dart';

class ShoppingCard extends StatelessWidget {
  final Cart cart;

  const ShoppingCard({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black26, width: 1.0)),
      ),
      child: Row(
        children: [
          //Image
          Image(
            image: AssetImage(cart.imageUrl),
            fit: BoxFit.cover,
            height: 100,
            width: 80,
          ),
          // Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  cart.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  cart.presentation,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                    Text('${cart.quantity}'),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add, color: Color(0xFF53B175)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Price
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.close),
              Text(
                '\$${cart.price}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
