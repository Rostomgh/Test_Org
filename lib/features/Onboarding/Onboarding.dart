import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/features/Onboarding/Model/OnboardingItem.dart';

class OnboardingP extends StatefulWidget {
  const OnboardingP({super.key});

  @override
  State<OnboardingP> createState() => _OnboardingPState();
}

class _OnboardingPState extends State<OnboardingP> {
  final controller = OboardingItem();
  final pageController = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
          controller: pageController,
          itemCount: controller.Item.length,
          onPageChanged: (index) {
            setState(() {
              isLastPage = index == controller.Item.length - 1;
            });
          },
          itemBuilder: (context, i) {
            return Stack(children: [
            
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset(
                  controller.Item[i].image,
                  height: 475,
                  width: 375,
                ),
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: CustomContainer(
                    title: controller.Item[i].title,
                    pageController: pageController,
                    isLastPage: isLastPage,
                  ))
            ]);
          }),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final String title;
  final PageController pageController;
  final bool isLastPage;

  const CustomContainer({
    Key? key,
    required this.title,
    required this.pageController,
    required this.isLastPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: AppColors.whiteColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              'In publishing and graphic design, Lorem is a placeholder text commonly',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: AppColors.whiteColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 43),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 12),
                    ),
                    child: const Text(
                      'SKIP',
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: pageController,
                    count: OboardingItem().Item.length,
                    effect: const WormEffect(
                      dotColor: Color.fromARGB(255, 235, 230, 185),
                      activeDotColor: AppColors.whiteColor,
                      dotWidth: 10,
                      dotHeight: 10,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      if (isLastPage) {
                        Navigator.pushReplacementNamed(context, '/login');
                      } else {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 600),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 12),
                    ),
                    child: const Text(
                      'NEXT',
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
