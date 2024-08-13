import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

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
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(assetData.logo),
        SizedBox(
          height: 4,
        ),
        AnimatedBuilder(
            animation: _textAnimation,
            builder: (context, _) {
              return SlideTransition(
                  position: _textAnimation,
                  child: Text(
                    "Read Freee Books",
                    textAlign: TextAlign.center,
                  ));
            })
      ],
    );
  }
}
