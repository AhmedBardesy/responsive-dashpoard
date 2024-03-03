import 'package:admin_dashbord/core/utiles/app_images.dart';
import 'package:admin_dashbord/core/utiles/app_styles.dart';
import 'package:admin_dashbord/models/user_info_model.dart';
import 'package:admin_dashbord/widgets/user_info_listtile.dart';
import 'package:flutter/material.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 16,
        ),
        const SizedBox(height: 80, child: LatestTransactionListview())
      ],
    );
  }
}

class LatestTransactionListview extends StatelessWidget {
  const LatestTransactionListview({super.key});
  static List<UserInfoModel> items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Marddf',
        subtitle: 'ahduedide@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Marddf',
        subtitle: 'ahduedide@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Marddf',
        subtitle: 'ahduedide@gmail.com'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder( 
      itemCount: items.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) =>
          IntrinsicWidth(child: UserInfoListTile(userInfoModel: items[index])),
    );
  }
}
