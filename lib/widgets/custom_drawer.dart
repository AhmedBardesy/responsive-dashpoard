import 'package:admin_dashbord/core/utiles/app_images.dart';
import 'package:admin_dashbord/models/drawer_item_model.dart';
import 'package:admin_dashbord/models/user_info_model.dart';
import 'package:admin_dashbord/widgets/active_inactive.dart';
import 'package:admin_dashbord/widgets/custom_list_view_drawer.dart';
import 'package:admin_dashbord/widgets/user_info_listtile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      color: Colors.white,
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: UserInfoListTile(
            userInfoModel: UserInfoModel(
                image: Assets.imagesAvatar1,
                title: 'Lekan OKeowo',
                subtitle: 'Demiodm@yahoo.com'),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 8,
          ),
        ),
        const SliverToBoxAdapter(child: DrawerItemLisView()),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const Expanded(
                  child: SizedBox(
                height: 20,
              )),
              InActive(
                  drawerItemModel: DrawerItemModel(
                      title: 'Setting', image: Assets.imagesSettings)),
              InActive(
                  drawerItemModel: DrawerItemModel(
                      title: 'Logout account', image: Assets.imagesLogout)),
              const SizedBox(
                height: 48,
              )
            ],
          ),
        )
      ]),
    );
  }
}
