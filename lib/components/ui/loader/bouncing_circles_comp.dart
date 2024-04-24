import 'package:flutter/material.dart';
import 'dart:math' as math;

class BouncingCirclesComponent extends StatefulWidget {
  const BouncingCirclesComponent({super.key});

  @override
  State<BouncingCirclesComponent> createState() =>
      _BouncingCirclesComponentState();
}

class _BouncingCirclesComponentState extends State<BouncingCirclesComponent>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<Animation<double>> _animations;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat();

    _animations = List.generate(6, (index) {
      return Tween<double>(begin: 0, end: 2 * math.pi).animate(
        CurvedAnimation(
          parent: _controller,
          curve: const Interval(0, 1, curve: Curves.linear),
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(6, (index) {
        Color color =
            index % 2 == 0 ? Theme.of(context).primaryColor : Colors.black54;
        return AnimatedBuilder(
          animation: _animations[index],
          builder: (context, child) {
            double offset =
                math.sin(_animations[index].value + index * math.pi / 3) * 5;
            return Transform.translate(
              offset: Offset(0, offset),
              child: child,
            );
          },
          child: Container(
            margin: const EdgeInsets.all(5.0),
            width: 10.0,
            height: 10.0,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
        );
      }),
    );
  }
}
