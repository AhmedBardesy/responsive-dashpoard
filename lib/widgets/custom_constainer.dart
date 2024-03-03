import 'package:admin_dashbord/models/all_expenses_item_model.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
     this.items,
    required this.child,
  });

  final List<AllExpensesItemModel>? items;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Padding(padding: EdgeInsets.all(20), child: child),
    );
  }
}
