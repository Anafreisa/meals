import 'package:flutter/material.dart';
import '../components/category_item.dart';
import '../data/dummy_data.dart';
import '../models/meal.dart';

class CategoriesScreen extends StatelessWidget {@override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 10,
      ),
      children: DUMMY_CATEGORIES.map((cat) {
        return CategoryItem(cat);
      }).toList(),
    );
  }
}
