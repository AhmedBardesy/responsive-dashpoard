import 'package:flutter/material.dart';
import 'package:admin_dashbord/core/utiles/app_styles.dart';
import 'package:admin_dashbord/widgets/custom_constainer.dart';
import 'package:admin_dashbord/widgets/income_section.dart';
import 'package:admin_dashbord/widgets/my_ard_section.dart';
import 'package:admin_dashbord/widgets/transaction_item.dart';

class LatestSection extends StatelessWidget {
  const LatestSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomContainer(
          child: Column(
            children: [
              MyCardsSection(),
              Divider(
                height: 40,
              ),
              TRansactionHistorySection(),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        IncomeSection()
      ],
    );
  }
}

class TRansactionHistorySection extends StatelessWidget {
  const TRansactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Transaction History',
              style: AppStyles.styleSemiBold20(context),
            ),
            Text(
              'See All',
              style: AppStyles.styleMedium16(context)
                  .copyWith(color: const Color(0xff4eb7f2)),
            ),
          ],
        ),
        const TransactionHestoryListView()
      ],
    );
  }
}
