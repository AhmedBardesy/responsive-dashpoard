import 'package:admin_dashbord/core/utiles/app_styles.dart';
import 'package:admin_dashbord/models/all_expenses_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpenssesItem extends StatelessWidget {
  const AllExpenssesItem({super.key, required this.allExpensesItemModel});
  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xfff1f1f1)),
              borderRadius: BorderRadius.circular(12))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Flexible(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 60),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    // width: 60,
                    // height: 60,
                    decoration: const ShapeDecoration(
                        shape: OvalBorder(), color: Color(0xfffafafa)),
                    child: Center(
                        child: SvgPicture.asset(allExpensesItemModel.image)),
                  ),
                ),
              ),
            ),
            const Expanded(child: SizedBox()),
            Transform.rotate(
                angle: -1.57079633 * 2,
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Color(0xff064061),
                ))
          ],
        ),
        const SizedBox(
          height: 34,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            allExpensesItemModel.title,
            style: AppStyles.styleMedium16(context),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            allExpensesItemModel.subtitle,
            style: AppStyles.styleRegular14(context),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24(context),
          ),
        ),
      ]),
    );
  }
}
