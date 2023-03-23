import 'package:flutter/material.dart';

class AnimationLogo extends StatefulWidget {
  const AnimationLogo({
    super.key,
    this.size = 63,
  });
  final double size;

  @override
  State<AnimationLogo> createState() => _AnimationLogoState();
}

class _AnimationLogoState extends State<AnimationLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);

    controller.forward();

    animation.addStatusListener((status) {
      print(status);
    });

    controller.addListener(() {
      setState(() {});
      print(animation.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'logo',
      child: SizedBox(
        height: controller.value * widget.size,
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}
