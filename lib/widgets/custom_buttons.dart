import 'package:admin_dashbord/core/utiles/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.color, this.textcolor, required this.text});
  final Color? color, textcolor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: color ?? const Color(0xff4db7f2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          onPressed: () {},
          child: Text(
            text,
            style:
                AppStyles.styleSemiBold18(context).copyWith(color: textcolor),
          )),
    );
  }
}
