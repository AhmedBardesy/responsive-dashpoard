import 'package:admin_dashbord/widgets/custom_buttons.dart';
import 'package:admin_dashbord/widgets/custom_tet_field.dart';
import 'package:flutter/material.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                  title: 'Customer Name', hint: 'Type Customer Name'),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                  title: 'Customer Email', hint: 'Type Customer Email'),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                  title: 'Item Name', hint: 'Type Customer Name'),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(title: 'Item mount', hint: 'USD'),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(children: [
          Expanded(
              child: CustomButton(
            textcolor: const Color(0xff4db7f2),
            color: Colors.transparent,
            text: 'Add more details',
          )),
          Expanded(
              child: CustomButton(
            text: 'Send Mony',
          ))
        ])
      ],
    );
  }
}
