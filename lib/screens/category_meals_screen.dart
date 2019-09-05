import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    // take args provided by pushNamed method
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final filteredMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle)),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
            title: filteredMeals[index].title,
            imageUrl: filteredMeals[index].imageUrl,
            duration: filteredMeals[index].duration,
            affordability: filteredMeals[index].affordability,
            complexity: filteredMeals[index].complexity,
          );
        },
        itemCount: filteredMeals.length,
      ),
    );
  }
}
