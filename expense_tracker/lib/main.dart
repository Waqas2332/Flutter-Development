import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

var colorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));

void main() {
  runApp(MaterialApp(
    theme: ThemeData().copyWith(
      colorScheme: colorScheme,
      appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: colorScheme.onPrimaryContainer,
          foregroundColor: colorScheme.primaryContainer),
      cardTheme: const CardTheme().copyWith(
        color: colorScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primaryContainer,
        ),
      ),
      textTheme: const TextTheme().copyWith(
        titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
          color: colorScheme.onSecondaryContainer,
          fontSize: 17,
        ),
      ),
    ),
    home: const Expenses(),
  ));
}
