import 'loader/full_loader_comp.dart';
import 'package:flutter/material.dart';

class PageContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final bool isLoading;
  final ScrollController? _scrollController;
  const PageContainer(
      {super.key,
      required this.child,
      this.padding = const EdgeInsets.all(16),
      dynamic scrollColtroller,
      this.isLoading = false})
      : _scrollController = scrollColtroller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Padding(
                      padding: padding,
                      child: child,
                    )),
              ),
            ],
          ),
          if (isLoading) const FullLoaderComp()
        ],
      ),
    );
  }
}
