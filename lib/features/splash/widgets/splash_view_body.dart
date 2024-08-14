import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/data/presntation/view_models/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class splashViewBody extends StatefulWidget {
  @override
  State<splashViewBody> createState() => _splashViewBodyState();
}

class _splashViewBodyState extends State<splashViewBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> _textAnimation;

  @override
  void initState() {
    super.initState();

    initSlidingAnimation();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(homeView(),
          transition: Transition.fade, duration: Duration(seconds: 2));
    });
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    _textAnimation = Tween<Offset>(begin: Offset(0.0, 20.0), end: Offset.zero)
        .animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut,
    ));
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(assetData.logo),
        SizedBox(
          height: 4,
        ),
        slidingText(textAnimation: _textAnimation)
      ],
    );
  }
}

class slidingText extends StatelessWidget {
  const slidingText({
    super.key,
    required Animation<Offset> textAnimation,
  }) : _textAnimation = textAnimation;

  final Animation<Offset> _textAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _textAnimation,
        builder: (context, _) {
          return SlideTransition(
              position: _textAnimation,
              child: Text(
                "Read Freee Books",
                textAlign: TextAlign.center,
              ));
        });
  }
}
