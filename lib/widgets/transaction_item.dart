import 'package:admin_dashbord/core/utiles/app_styles.dart';
import 'package:admin_dashbord/models/transaction_model.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransctionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xfffafafa),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.styleRegular16(context),
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
              color: transactionModel.isWithdrawal
                  ? const Color(0xfff3735e)
                  : const Color(0xff7cd87a)),
        ),
      ),
    );
  }
}

class TransactionHestoryListView extends StatelessWidget {
  const TransactionHestoryListView({super.key});
  static const items = [
    TransctionModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: true),
    TransctionModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: false),
    TransctionModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          3, (index) => TransactionItem(transactionModel: items[index])),
    );

    //     ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: 3,
    //   itemBuilder: (context, index) => IntrinsicWidth(
    //       child: TransactionItem(transactionModel: items[index])),
    // );
  }
}
