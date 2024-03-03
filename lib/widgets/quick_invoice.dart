import 'package:admin_dashbord/widgets/custom_constainer.dart';
import 'package:admin_dashbord/widgets/latest_transaction.dart';
import 'package:admin_dashbord/widgets/quick_invoice_form.dart';
import 'package:admin_dashbord/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(
            height: 48,
          ),
          QuickInvoiceForm()
        ],
      ),
    );
  }
}
