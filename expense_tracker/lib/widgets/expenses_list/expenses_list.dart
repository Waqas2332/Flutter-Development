import 'package:expense_tracker/model/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(this.expensesList, this.onRemoveExpense, {super.key});

  final List<Expense> expensesList;
  final void Function(Expense expense) onRemoveExpense;
  @override
  Widget build(BuildContext context) {
    // ListView for long scrollable lists, .builder() is used to create items when they are about to be visible i.e, for showing items dynamically
    return ListView.builder(
      itemCount: expensesList.length,
      itemBuilder: (ctx, index) => Dismissible(
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(0.75),
          margin: EdgeInsets.symmetric(
            horizontal: Theme.of(context).cardTheme.margin!.horizontal,
          ),
        ),
        key: ValueKey(expensesList[index]),
        onDismissed: (direction) {
          onRemoveExpense(expensesList[index]);
        },
        child: ExpensesItem(
          expensesList[index],
        ),
      ),
    );
  }
}
