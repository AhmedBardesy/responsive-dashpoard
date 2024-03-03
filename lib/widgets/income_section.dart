import 'dart:developer';

import 'package:admin_dashbord/core/utiles/app_styles.dart';
import 'package:admin_dashbord/widgets/custom_constainer.dart';
import 'package:admin_dashbord/widgets/income_chart.dart';
import 'package:admin_dashbord/widgets/income_details.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    log(width.toString());

    return width >= 1200 && width < 1249
        ? IncomeChart()
        : const CustomContainer(
            child: Column(
            children: [
              IncomeSectionHeader(),
              Row(
                children: [
                  Expanded(child: IncomeChart()),
                  Expanded(child: IncomeDetails()),
                ],
              ),
            ],
          ));
  }
}

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppStyles.styleSemiBold20(context),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
              Text(
                'Monthly',
                style: AppStyles.styleMedium16(context),
              ),
              const SizedBox(
                width: 16,
              ),
              Transform.rotate(
                angle: -1.57079633,
                child: const Icon(
                  Icons.arrow_back_ios_new,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
