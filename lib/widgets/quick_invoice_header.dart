
import 'package:admin_dashbord/core/utiles/app_styles.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20(context), 
        ),
        const Expanded(child: SizedBox()),
        Container(
          height: 48,
          width: 48,
          decoration: const ShapeDecoration(
              shape: OvalBorder(), color: Color(0xfffafafa)),
          child: const Icon(
            Icons.add,
            color: Color(0xff4eb7f2),
          ),
        )
      ],
    );
  }
}
