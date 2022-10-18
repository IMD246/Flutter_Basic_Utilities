import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

Widget animatedIndicatorWidget({required int count, required int activeIndex}) {
  return AnimatedSmoothIndicator(
    count: count,
    activeIndex: activeIndex,
    effect: SlideEffect(
      dotWidth: 12,
      dotHeight: 12,
      activeDotColor: Colors.red,
      dotColor: Colors.black.withOpacity(0.2),
    ),
  );
}
