import 'dart:async';
import 'package:flutter/material.dart';
import 'bouncing_circles_comp.dart';

class FullLoaderComp extends StatefulWidget {
  const FullLoaderComp({super.key});

  @override
  State<FullLoaderComp> createState() => _FullLoaderCompState();
}

class _FullLoaderCompState extends State<FullLoaderComp> {
  List<String> sentences = [
    "Wait a moment...",
    "I'm working for you...",
    "Still a moment...",
    "Mmm it seems complicated...",
  ];
  int currentIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % sentences.length;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white.withOpacity(0.9),
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const BouncingCirclesComponent(),
            const SizedBox(height: 10),
            Text(
              sentences[currentIndex],
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none), // Remove underline
            ),
          ],
        )
      ],
    );
  }
}
