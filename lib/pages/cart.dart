import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceriesapp/models/cart.dart';
import 'package:groceriesapp/widgets/components/shopping_card.dart';
import 'package:groceriesapp/widgets/controls/button_action.dart';
import 'package:groceriesapp/widgets/texts/title_section.dart';

class CartPage extends StatelessWidget {
  // Demo data
  final List<Cart> shoppingCart = [
    Cart(
      name: 'Sprite',
      presentation: '1 L',
      imageUrl: 'assets/img/sprite.png',
      quantity: 1,
      price: 15.89,
    ),
    Cart(
      name: 'Orange',
      presentation: '1.5 L',
      imageUrl: 'assets/img/orangejuice.png',
      quantity: 1,
      price: 12.50,
    ),
    Cart(
      name: 'Pepsi',
      presentation: '355 ml',
      imageUrl: 'assets/img/pepsican.png',
      quantity: 2,
      price: 3.99,
    ),
    Cart(
      name: 'Diet Coke',
      presentation: '355 ml',
      imageUrl: 'assets/img/dietcoke.png',
      quantity: 10,
      price: 5.89,
    ),
    Cart(
      name: 'Sprite',
      presentation: '1 L',
      imageUrl: 'assets/img/sprite.png',
      quantity: 1,
      price: 15.89,
    ),
    Cart(
      name: 'Orange',
      presentation: '1.5 L',
      imageUrl: 'assets/img/orangejuice.png',
      quantity: 1,
      price: 12.50,
    ),
    Cart(
      name: 'Pepsi',
      presentation: '355 ml',
      imageUrl: 'assets/img/pepsican.png',
      quantity: 2,
      price: 3.99,
    ),
    Cart(
      name: 'Diet Coke',
      presentation: '355 ml',
      imageUrl: 'assets/img/dietcoke.png',
      quantity: 10,
      price: 5.89,
    ),
  ];
  CartPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(onTap: (){
          context.go('/products');
        }, child: Icon(Icons.arrow_back_ios_new)),
        title: Center(child: TitleSection(text: 'My Cart')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: shoppingCart.length,
          itemBuilder: (context, index) {
            return ShoppingCard(cart: shoppingCart[index]);
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: MyActionButton(text: 'Go to Checkout', onPressed: () {}),
      ),
    );
  }
}
