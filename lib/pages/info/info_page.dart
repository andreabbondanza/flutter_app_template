import 'package:flutter/material.dart';
import 'package:flutter_app_template/components/ui/loader/full_loader_comp.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: FullLoaderComp());
  }
}
