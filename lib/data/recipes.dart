import '../models/recipe.dart';

final List<Recipe> recipes = [
  Recipe(
    title: 'Ramen Doshirak',
    description: 'Simple student fast food',
    imageUrl: 'images/ramen.jfif',
    cookTime: 5,
    ingredients: [
      Ingredient(name: 'Doshirak noodles', amount: 100, unit: 'g'),
      Ingredient(name: 'Hot water', amount: 300, unit: 'ml'),
      Ingredient(name: 'Spices packet', amount: 1, unit: 'pcs'),
    ],
    steps: [
      'Boil water',
      'Add noodles to bowl',
      'Pour hot water',
      'Add spices',
      'Wait 5 minutes and eat',
    ],
  ),
  Recipe(
    title: 'Sandwich',
    description: 'Tasty sandwich with easy ingredients',
    imageUrl: 'images/butao.jfif',
    cookTime: 10,
    ingredients: [
      Ingredient(name: 'Bread', amount: 2, unit: 'slices'),
      Ingredient(name: 'Cheese', amount: 50, unit: 'g'),
      Ingredient(name: 'Sausage', amount: 50, unit: 'g'),
      Ingredient(name: 'Tomato', amount: 30, unit: 'g'),
      Ingredient(name: 'Ketchup or mayonnaise', amount: 10, unit: 'g'),
    ],
    steps: [
      'Take two slices of bread',
      'Add cheese and sausage',
      'Add vegetables',
      'Spread ketchup/mayonnaise',
      'Close sandwich',
      'Serve',
    ],
  ),
  Recipe(
    title: 'Pelmeni with sauce',
    description: 'Classic dumplings but for us pelmeni',
    imageUrl: 'images/pelmen.jfif',
    cookTime: 20,
    ingredients: [
      Ingredient(name: 'Pelmeni', amount: 200, unit: 'g'),
      Ingredient(name: 'Water', amount: 500, unit: 'ml'),
      Ingredient(name: 'Salt', amount: 5, unit: 'g'),
      Ingredient(name: 'Mayonnaise', amount: 20, unit: 'g'),
    ],
    steps: [
      'Boil water with salt',
      'Add pelmeni',
      'Cook for 7-10 minutes',
      'Drain water',
      'Serve with mayonnaise',
    ],
  ),
  Recipe(
    title: 'Rice, salad and chicken',
    description: 'Healthiest food for everyone',
    imageUrl: 'images/rice.jfif',
    cookTime: 30,
    ingredients: [
      Ingredient(name: 'Rice', amount: 100, unit: 'g'),
      Ingredient(name: 'Chicken breast', amount: 150, unit: 'g'),
      Ingredient(name: 'Vegetables', amount: 100, unit: 'g'),
      Ingredient(name: 'Salt & spices', amount: 5, unit: 'g'),
    ],
    steps: [
      'Cook rice',
      'Fry or boil chicken',
      'Prepare salad',
      'Serve everything together',
    ],
  ),
];