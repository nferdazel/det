import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant/constant.dart';
import '../theme/theme.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    List<Widget> screens = [
      const TotalControl(),
      const WhereMoneyGoes(),
      const PlanningAhead(),
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  PageView.builder(
                    physics: const ClampingScrollPhysics(),
                    itemCount: screens.length,
                    onPageChanged: (int page) {},
                    controller: controller,
                    itemBuilder: (context, index) {
                      return screens[index];
                    },
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Tints.violet100,
                  minimumSize: const Size.fromHeight(56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Sign Up',
                  style: Fads.title3.copyWith(color: Tints.light80),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Tints.violet20,
                  minimumSize: const Size.fromHeight(56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Login',
                  style: Fads.title3.copyWith(color: Tints.violet100),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TotalControl extends StatelessWidget {
  const TotalControl({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 32, bottom: 41),
          child: SvgPicture.asset(
            Lanes.control,
            width: 312,
            height: 312,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 17),
          child: Text(
            'Gain total control\nof your money',
            style: Fads.title1,
          ),
        ),
        Text(
          'Become your own money manager\nand make every cent count',
          style: Fads.regular1,
        ),
      ],
    );
  }
}

class WhereMoneyGoes extends StatelessWidget {
  const WhereMoneyGoes({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 32, bottom: 41),
          child: SvgPicture.asset(
            Lanes.money,
            width: 312,
            height: 312,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 17),
          child: Text(
            'Know where your\nmoney goes',
            style: Fads.title1,
          ),
        ),
        Text(
          'Track your transaction easily,\nwith categories and financial report',
          style: Fads.regular1,
        ),
      ],
    );
  }
}

class PlanningAhead extends StatelessWidget {
  const PlanningAhead({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 32, bottom: 41),
          child: SvgPicture.asset(
            Lanes.planning,
            width: 312,
            height: 312,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 17),
          child: Text(
            'Planning ahead',
            style: Fads.title1,
          ),
        ),
        Text(
          'Setup your budget for each category\nso you in control',
          style: Fads.regular1,
        ),
      ],
    );
  }
}

class PageIndicator extends StatefulWidget {
  const PageIndicator({super.key});
  @override
  State<PageIndicator> createState() => _PageIndicatorState();
}

class _PageIndicatorState extends State<PageIndicator> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [],
    );
  }
}
