import 'package:admin_dashbord/core/utiles/app_images.dart';
import 'package:admin_dashbord/models/drawer_item_model.dart';
import 'package:admin_dashbord/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemLisView extends StatefulWidget {
  const DrawerItemLisView({
    super.key,
  });

  static List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesMyTransctions),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Accoun', image: Assets.imagesWalletAccount),
    DrawerItemModel(title: 'MY Investments', image: Assets.imagesMyInvestments),
  ];

  @override
  State<DrawerItemLisView> createState() => _DrawerItemLisViewState();
}

class _DrawerItemLisViewState extends State<DrawerItemLisView> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: DrawerItemLisView.items.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
                print(activeIndex);
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: DrawerItemLisView.items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
