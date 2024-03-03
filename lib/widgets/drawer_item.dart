import 'package:admin_dashbord/models/drawer_item_model.dart';
import 'package:admin_dashbord/widgets/active_inactive.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? Active(drawerItemModel: drawerItemModel)
        : InActive(drawerItemModel: drawerItemModel);
  }
}
