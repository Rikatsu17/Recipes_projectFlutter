import 'package:flutter/material.dart';
import '../models/recipe.dart';

class RecipeDetailScreen extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetailScreen({super.key, required this.recipe});

  @override
  State<RecipeDetailScreen> createState() => _RecipeDetailScreenState();
}

class _RecipeDetailScreenState extends State<RecipeDetailScreen> {
  int servings = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.recipe.imageUrl.startsWith('http')
                ? Image.network(
              widget.recipe.imageUrl,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            )
                : Image.asset(
              widget.recipe.imageUrl,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.recipe.title,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Row(
                    children: [
                      const Icon(Icons.schedule, color: Colors.deepOrange),
                      const SizedBox(width: 5),
                      Text('${widget.recipe.cookTime} minutes'),
                    ],
                  ),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Servings:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$servings',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: servings.toDouble(),
                    min: 1,
                    max: 10,
                    divisions: 9,
                    label: servings.toString(),
                    onChanged: (double value) {
                      setState(() {
                        servings = value.toInt();
                      });
                    },
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    'Ingredients',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widget.recipe.ingredients
                      .map((ingredient) => Text('- ${ingredient.scaled(servings)}'))
                      .toList(),
                ),

                  const SizedBox(height: 20),

                  const Text(
                    'Steps',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: widget.recipe.steps
                        .asMap()
                        .entries
                        .map((entry) => Text('${entry.key + 1}. ${entry.value}'))
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}