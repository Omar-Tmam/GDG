import 'package:animation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> textFadeAnimation;
  @override
  void initState() {
    super.initState();
    initAnimation();
    navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedBuilder(
          animation: animationController,
          builder: (context, child) {
            return Opacity(
              opacity: textFadeAnimation.value,
              child: Center(
                child: Text('Top Teams App',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white.withOpacity(0.8),
                    )),
              ),
            );
          },
        ),
      ],
    );
  }

  void initAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    textFadeAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(() => const HomeView(),
          transition: Transition.fade, duration: const Duration(seconds: 1));
    });
  }
}
