import 'package:flutter/material.dart';
import 'package:groceriesapp/models/product_detail.dart';
import 'package:groceriesapp/widgets/components/product_detail.dart';
import 'package:groceriesapp/widgets/components/product_header.dart';
import 'package:groceriesapp/widgets/controls/button_action.dart';
import 'package:groceriesapp/widgets/texts/subtitle_section.dart';
import 'package:groceriesapp/widgets/texts/title_section.dart';

class ProductPage extends StatelessWidget {
  final ProductDetail product = ProductDetail(
    imageUrl: 'assets/img/product.png',
    name: 'Natural Red Apple',
    presentation: '1KG Price',
    qty: 10,
    price: 16.50,
    ranking: 4,
    nutrition:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets ',
    productDetail:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets ',
    review:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets ',
    nutritions: '100gr',
  );

  ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductHeader(product: product),
            SizedBox(height: 24),
            ProductDetailPage(product: product),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: MyActionButton(text: 'Add To Basket', onPressed: () {}),
      ),
    );
  }
}
