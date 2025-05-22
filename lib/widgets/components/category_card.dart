import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceriesapp/models/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push('/products'),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: category.color.withAlpha(45),
          border: Border.all(color: category.color, width: 2.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 130,
              width: double.infinity,
              child: Image(image: AssetImage(category.imagenUrl)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                category.name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
