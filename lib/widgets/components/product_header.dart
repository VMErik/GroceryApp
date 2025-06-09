import 'package:flutter/material.dart';
import 'package:groceriesapp/models/product_detail.dart';

class ProductHeader extends StatelessWidget {
  final ProductDetail product;
  const ProductHeader({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage(product.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back_ios_new),
                      Icon(Icons.ios_share_outlined),
                    ],
                  ),
                ),
              ],
            );
  }
}