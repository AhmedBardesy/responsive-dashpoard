import 'package:admin_dashbord/core/utiles/app_styles.dart';
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({super.key, required this.hintext});
  final String hintext;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintext,
        fillColor: const Color(0xfffafafa),
        filled: true,
        border: newMethod(),
        enabledBorder: newMethod(),
        focusedBorder: newMethod(),
      ),
    );
  }

  OutlineInputBorder newMethod() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xfffafafa)),
        borderRadius: BorderRadius.circular(12));
  }
}

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hint});
  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        CustomInputField(hintext: hint)
      ],
    );
  }
}
