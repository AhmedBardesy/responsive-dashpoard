import 'package:admin_dashbord/views/adaptive_layout_widget.dart';
import 'package:admin_dashbord/widgets/custom_drawer.dart';
import 'package:admin_dashbord/widgets/dashboard_desktop_layout.dart';
import 'package:admin_dashbord/widgets/dashboard_tablet_layout.dart';
import 'package:admin_dashbord/widgets/mobile_dashboard.dart';
import 'package:flutter/material.dart';

class DashBoradView extends StatefulWidget {
  const DashBoradView({super.key});

  @override
  State<DashBoradView> createState() => _DashBoradViewState();
}

class _DashBoradViewState extends State<DashBoradView> {
  final GlobalKey<ScaffoldState> scafoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafoldkey,
      drawer: CustomDrawer(),
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  scafoldkey.currentState!.openDrawer();
                },
              ),
            )
          : null,
      backgroundColor: const Color(0xfff7f9fa),
      body: AdaptiveLayout(
        mobilelayout: (context) => const DashboardMobileLayout(),
        tabletlayout: (context) => const DashBoardTabletLayout(),
        desktoplayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
