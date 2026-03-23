import '../models/recipe.dart';

final List<Recipe> recipes = [
  Recipe(
    title: 'Ramen Doshirak',
    description: 'Simple student fast food',
    imageUrl: 'images/ramen.jfif',
    cookTime: 5,
    ingredients: [
      'Doshirak noodles',
      'Hot water',
      'Spices packet',
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
      'Bread',
      'Cheese',
      'Sausage',
      'Tomato',
      'Ketchup or mayonnaise',
    ],
    steps: [
      'Take two slices of bread',
      'Add cheese and sausage',
      'Add vegetables',
      'spread ketchup/mayonnaise'
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
      'Pelmeni',
      'Water',
      'Salt',
      'Mayonnaise',
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
      'Rice',
      'Chicken breast',
      'Vegetables',
      'Salt & spices',
    ],
    steps: [
      'Cook rice',
      'Fry or boil chicken',
      'Prepare salad',
      'Serve everything together',
    ],
  ),
];