import 'package:admin_dashbord/widgets/custom_drawer.dart';
import 'package:admin_dashbord/widgets/mobile_dashboard.dart';
import 'package:flutter/material.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: DashboardMobileLayout(),
          ),
        )
      ],
    );
  }
}
