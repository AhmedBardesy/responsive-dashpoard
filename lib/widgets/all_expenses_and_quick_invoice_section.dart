import 'package:admin_dashbord/widgets/all_expensive.dart';
import 'package:flutter/material.dart';
import 'package:admin_dashbord/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(

      children: [
        AllExpensses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
      ],
    );
  }
}
