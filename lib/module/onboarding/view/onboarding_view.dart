import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  Widget build(context, OnboardingController controller) {
    controller.view = this;

    return Scaffold(
      body: Onboarding(
          pages: controller.onboardingPagesList,
          onPageChange: (int pageIndex) {
            controller.index = pageIndex;
          },
          footerBuilder: (context, dragDistance, pagesLength, setIndex) {
            return DecoratedBox(
              decoration: BoxDecoration(
                color: neutral50,
                border: Border.all(
                  width: 0.0,
                  color: neutral50,
                ),
              ),
              child: ColoredBox(
                color: neutral50,
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 45.0),
                        child: CustomIndicator(
                          netDragPercent: dragDistance,
                          pagesLength: pagesLength,
                          indicator: Indicator(
                            activeIndicator: const ActiveIndicator(
                                color: neutral200, borderWidth: 0.7),
                            closedIndicator: const ClosedIndicator(
                                color: primaryPurple, borderWidth: 0.7),
                            indicatorDesign: IndicatorDesign.polygon(
                              polygonDesign: PolygonDesign(
                                polygon: DesignType.polygon_circle,
                              ),
                            ),
                          ),
                        ),
                      ),
                      controller.index != pagesLength - 1
                          ? controller.skipButton(setIndex: setIndex)
                          : controller.homeButton,
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }

  @override
  State<OnboardingView> createState() => OnboardingController();
}
