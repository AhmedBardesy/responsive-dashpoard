import 'package:admin_dashbord/core/utiles/app_images.dart';
import 'package:admin_dashbord/models/all_expenses_item_model.dart';
import 'package:admin_dashbord/widgets/all_expensses_header.dart';
import 'package:admin_dashbord/widgets/all_expensses_item.dart';
import 'package:admin_dashbord/widgets/custom_constainer.dart';
import 'package:flutter/material.dart';

class AllExpensses extends StatefulWidget {
  const AllExpensses({super.key});

  @override
  State<AllExpensses> createState() => _AllExpenssesState();
}

class _AllExpenssesState extends State<AllExpensses> {
  final List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        subtitle: 'april 2022',
        price: r'$' '2022'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'income',
        subtitle: 'april 2022',
        price: r'$' '2022'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        subtitle: 'april 2022',
        price: r'$' '2022')
  ];

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      items: items,
      child: Column(
        children: [
          const AllExpenessHeader(),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: items
                .map((e) => Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: AllExpenssesItem(
                        allExpensesItemModel: e,
                      ),
                    )))
                .toList(),
          ),
        ],
      ),
    );
  }
}
