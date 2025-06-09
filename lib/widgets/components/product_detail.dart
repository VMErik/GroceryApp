import 'package:flutter/material.dart';
import 'package:groceriesapp/models/product_detail.dart';
import 'package:groceriesapp/widgets/texts/subtitle_section.dart';
import 'package:groceriesapp/widgets/texts/title_section.dart';

class ProductDetailPage extends StatelessWidget {
  ProductDetail product;
  ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleSection(text: product.name),
                          SubtitleSection(text: product.presentation, size: 16),
                        ],
                      ),
                      Icon(
                        Icons.favorite_border,
                        size: 32,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove, size: 32),
                      ),
                      Text('${product.qty}'),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          size: 32,
                          color: Color(0xFF53B175),
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        '\$${product.price}',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  //  Acordeon
                  SizedBox(height: 20),
                  ExpansionTile(
                    tilePadding: EdgeInsets.all(0),
                    title: Text(
                      'Product Detail',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    initiallyExpanded: true,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          product.productDetail,
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    tilePadding: EdgeInsets.all(0),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nutritions',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            product.nutritions,
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          product.nutrition,
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    tilePadding: EdgeInsets.all(0),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Review',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        // Valoraciones
                        Row(
                          children: List.generate(
                            5, // Número total de estrellas posibles
                            (index) => Icon(
                              index < product.ranking
                                  ? Icons.star
                                  : Icons.star_border,
                              color: Colors.deepOrange,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          product.review,
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
  }
}