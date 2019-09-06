import 'package:flutter/material.dart';

class MealDetailsScreen extends StatelessWidget {
  static const routeName = '/meal-details';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('$mealId: Meal Details'),
      ),
      body: Center(
        child: Text('This meal\'s ID is $mealId'),
      ),
    );
  }
}
