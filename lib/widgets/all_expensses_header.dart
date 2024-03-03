import 'package:admin_dashbord/core/utiles/app_styles.dart';
import 'package:flutter/material.dart';

class AllExpenessHeader extends StatelessWidget {
  const AllExpenessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        Container(
          decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 1,
                    color: Color(0xfff1f1f1),
                  ),
                  borderRadius: BorderRadius.circular(12))),
          child: Row(
            children: [
              Text(
                'Monthly',
                style: AppStyles.styleMedium16(context),
              ),
              const SizedBox(
                width: 18,
              ),
              Transform.rotate(
                  angle: -1.57079633,
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Color(0xff064061),
                  ))
            ],
          ),
        )
      ],
    );
  }
}
