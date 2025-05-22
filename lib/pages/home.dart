import 'package:flutter/material.dart';
import 'package:groceriesapp/models/category.dart';
import 'package:groceriesapp/widgets/components/category_card.dart';
import 'package:groceriesapp/widgets/texts/title_section.dart';

class HomePage extends StatelessWidget {

  final List<Category> categories = [
    Category(
      name: 'Fresh Fruits & Vegetables',
      color: Color(0xFF53B175),
      imagenUrl: 'assets/img/vegetables.png',
    ),
    Category(
      name: 'Cooking Oil',
      color: Color(0xFFF8A44C),
      imagenUrl: 'assets/img/coockingoil.png',
    ),
    Category(
      name: 'Meat & Fish',
      color: Color(0xFFF7A593),
    
      imagenUrl: 'assets/img/meat.png',
    ),
    Category(
      name: 'Bakery & Snacks',
      color: Color(0xFFD3B0E0),
      
      imagenUrl: 'assets/img/bakery.png',
    ),
    Category(
      name: 'Dairy & Eggs',
      color: Color(0xFFFDE598),
      
      imagenUrl: 'assets/img/dairyeggs.png',
    ),
    Category(
      name: 'Beverages',
      color: Color(0xFFB7DFF5),
      
      imagenUrl: 'assets/img/beverages.png',
    ),
    Category(
      name: 'Fresh Fruits & Vegetables',
      color: Color(0xFF53B175),
      imagenUrl: 'assets/img/vegetables.png',
    ),
    Category(
      name: 'Cooking Oil',
      color: Color(0xFFF8A44C),
      imagenUrl: 'assets/img/coockingoil.png',
    ),
    Category(
      name: 'Meat & Fish',
      color: Color(0xFFF7A593),
    
      imagenUrl: 'assets/img/meat.png',
    ),
    
  ];
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Center(child: TitleSection(text: 'Find Products')),
                SizedBox(height: 20),
                TextField(                  
                  decoration: InputDecoration(
                    labelText: 'Search in store',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                LayoutBuilder(
                  builder: (context, constraints) {
                    final width = constraints.maxWidth;
                    int crossAxisCount = 2;
                    if (width > 600) crossAxisCount = 3;
                    if (width > 900) crossAxisCount = 4;
                    return GridView.builder(
                      shrinkWrap: true, // ← ¡clave!
                      physics:
                          const NeverScrollableScrollPhysics(), // ← evita conflicto con SingleChildScrollView
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        Category category = categories[index];
                        return CategoryCard(category: category,);
                      },
                    );
                  },
                ),
                // createCards(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

}
