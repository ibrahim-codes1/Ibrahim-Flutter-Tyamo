import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashLoaderAnimation extends StatelessWidget {
  const SplashLoaderAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.halfTriangleDot(
        color: Color(0xff1552B1),
        size: 70,
      ),
    );
  }
}
