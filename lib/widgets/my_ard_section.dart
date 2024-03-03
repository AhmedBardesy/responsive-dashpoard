import 'package:admin_dashbord/core/utiles/app_styles.dart';
import 'package:admin_dashbord/widgets/cards_page_view.dart';
import 'package:admin_dashbord/widgets/custom_constainer.dart';
import 'package:admin_dashbord/widgets/custom_dot.dart';
import 'package:flutter/material.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int curentIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      curentIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Card',
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardPageView(pageController: pageController),
        const SizedBox(
          height: 20,
        ),
        DotsIndicator(
          currentindex: curentIndex,
        )
      ],
    );
  }
}
