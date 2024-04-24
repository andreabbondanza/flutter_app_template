import 'package:flutter/material.dart';

import 'loader/full_loader_comp.dart';

class PageContainerNoScroll extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final bool isLoading;

  const PageContainerNoScroll(
      {super.key,
      required this.child,
      this.padding = const EdgeInsets.all(16),
      this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                  child: Padding(
                padding: padding,
                child: child,
              )),
            ],
          ),
          if (isLoading) const FullLoaderComp()
        ],
      ),
    );
  }
}
