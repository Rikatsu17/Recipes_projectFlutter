class Ingredient {
  final String name;
  final double amount; // базовое количество
  final String unit;   // граммы, мл, шт и т.д.

  Ingredient({
    required this.name,
    required this.amount,
    required this.unit,
  });

  // Метод для масштабирования по количеству порций
  String scaled(int servings) {
    final scaledAmount = amount * servings;
    // Убираем .0 если целое число
    String displayAmount = scaledAmount % 1 == 0
        ? scaledAmount.toInt().toString()
        : scaledAmount.toStringAsFixed(1);
    return '$displayAmount $unit $name';
  }
}

class Recipe {
  final String title;
  final String description;
  final String imageUrl;
  final int cookTime;
  final List<Ingredient> ingredients;
  final List<String> steps;

  Recipe({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.cookTime,
    required this.ingredients,
    required this.steps,
  });
}