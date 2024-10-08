import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_org/core/Theme/AppColors.dart';
import 'package:test_org/core/Theme/AppSizes.dart';
import 'package:test_org/features/Onboarding/Model/OnboardingItem.dart';

class CustomContainer extends StatelessWidget {
  final String title;
  final controller = OboardingItem();
  final pageController = PageController();
  bool isLastPage = false;

  CustomContainer({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSizes.heightC,
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(48),
          topLeft: Radius.circular(48),
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
                fontFamily: 'MyFont',
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: AppColors.whiteColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 43),
            SmoothPageIndicator(
              controller: pageController,
              count: controller.Item.length, 
              effect: const WormEffect(
                dotColor: Color.fromARGB(255, 235, 230, 185),
                activeDotColor: AppColors.whiteColor, 
                dotWidth: 10,
                dotHeight: 10,
              ),
            ),
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
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      
                    ),
                    child: const Text(
                      'SKIP',
                      style: TextStyle(color: AppColors.whiteColor, fontSize: 18,fontWeight: FontWeight.w500),
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
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      
                    ),
                    child: const Text(
                      'NEXT',
                      style: TextStyle(color: AppColors.whiteColor, fontSize: 18,fontWeight: FontWeight.w500),
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
