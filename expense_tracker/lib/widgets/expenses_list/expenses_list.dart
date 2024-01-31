import 'package:expense_tracker/model/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(this.expensesList, {super.key});

  final List<Expense> expensesList;
  @override
  Widget build(BuildContext context) {
    // ListView for long scrollable lists, .builder() is used to create items when they are about to be visible i.e, for showing items dynamically
    return ListView.builder(
      itemCount: expensesList.length,
      itemBuilder: (ctx, index) => ExpensesItem(
        expensesList[index],
      ),
    );
  }
}
