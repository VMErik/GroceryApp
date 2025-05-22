import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceriesapp/models/product.dart';
import 'package:groceriesapp/widgets/components/product_card.dart';
import 'package:groceriesapp/widgets/texts/title_section.dart';

class ProductsPage extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'Diet Coke', presentation: '355 ml', price: 1.99, imageUrl: 'assets/img/dietcoke.png'),
    Product(name: 'Sprite Can', presentation: '355 ml', price: 1.99, imageUrl: 'assets/img/sprite.png'),
    Product(name: 'Apple & Grape Juice', presentation: '500 ml', price: 3.99, imageUrl: 'assets/img/applejuice.png'),
    Product(name: 'Orange Juice', presentation: '1 l', price: 5.99, imageUrl: 'assets/img/orangejuice.png'),
    Product(name: 'Coca Cola Can', presentation: '355 ml', price: 2.99, imageUrl: 'assets/img/cocacolacan.png'),
    Product(name: 'Pepsi Can', presentation: '355 ml', price: 2.44, imageUrl: 'assets/img/pepsican.png'),
    Product(name: 'Diet Coke', presentation: '355 ml', price: 1.99, imageUrl: 'assets/img/dietcoke.png'),
    Product(name: 'Sprite Can', presentation: '355 ml', price: 1.99, imageUrl: 'assets/img/sprite.png'),
    Product(name: 'Apple & Grape Juice', presentation: '500 ml', price: 3.99, imageUrl: 'assets/img/applejuice.png'),
    Product(name: 'Orange Juice', presentation: '1 l', price: 5.99, imageUrl: 'assets/img/orangejuice.png'),
  ];

  ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: TitleSection(text: 'Beverages')),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              children: [
                Icon(Icons.filter_alt_outlined, size: 35,),
                SizedBox(width: 15,),
                Icon(Icons.shopping_cart, size: 35,)
              ],
            ),
          ),
        ],
        leading: GestureDetector(onTap: () => context.go('/home'), child: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(        
        child: LayoutBuilder(
          builder: (context, constraints) {
            final width = constraints.maxWidth;
            int crossAxisCount = 2;
            if (width > 600) crossAxisCount = 3;
            if (width > 900) crossAxisCount = 4;

            return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: products.length,            
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 0.90
              ),
              itemBuilder: (context, index) {
                Product product = products[index];
                return ProductCard(product: product);
              },
            );
          },
        ),
      ),
    );
  }
}
