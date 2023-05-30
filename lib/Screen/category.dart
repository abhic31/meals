import 'package:flutter/material.dart';
import 'package:meals/Screen/meals.dart';
import 'package:meals/widgets/category_grid_item.dart';
import 'package:meals/data/dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key});

  void _selectcategory(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => MealsScreen(title: 'some title', meals: [])));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick your category'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          for (final category2 in availableCategories)
            CategoryGridItem(
                category2: category2,
                onSelectCategory: () {
                  _selectcategory(context);
                }),
        ],
      ),
    );
  }
}
