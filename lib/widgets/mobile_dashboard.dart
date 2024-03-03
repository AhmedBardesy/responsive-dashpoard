import 'package:admin_dashbord/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:admin_dashbord/widgets/latest_section.dart';
import 'package:flutter/material.dart';
class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          LatestSection()
        ],
      ),
    );
  }
}
