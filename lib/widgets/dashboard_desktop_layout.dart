import 'package:admin_dashbord/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:admin_dashbord/widgets/custom_drawer.dart';
import 'package:admin_dashbord/widgets/latest_section.dart';
import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child:
              SingleChildScrollView(child: AllExpensesAndQuickInvoiceSection()),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
            child: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: LatestSection(),
          )
        ])),
        SizedBox(
          width: 24,
        ),
      ],
    );
  }
}
