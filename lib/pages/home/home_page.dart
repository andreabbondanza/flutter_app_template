import 'package:flutter/material.dart';
import '../../api/client_api.dart';

import '../../common/loader.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _requestResult = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          const Row(children: [
            Expanded(
              child: Text(
                'Home Page for the Flutter App Template',
                textAlign: TextAlign.center,
              ),
            ),
          ]),
          const SizedBox(height: 20),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Theme.of(context).primaryColor.withOpacity(0.5);
                  }
                  return Theme.of(context).primaryColor;
                }),
              ),
              onPressed: () {
                Loader.showLoader(context);
                Future.delayed(const Duration(seconds: 5), () {
                  Loader.hideLoader(context);
                });
              },
              child: const Text('Show Loader',
                  style: TextStyle(color: Colors.white))),
          const SizedBox(height: 20),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Theme.of(context).primaryColor.withOpacity(0.5);
                  }
                  return Theme.of(context).primaryColor;
                }),
              ),
              onPressed: () async {
                final api = Maronn();
                final result = await api.get("https://www.google.com");
                if (mounted) {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: const Text('Request Result'),
                      content: Text(result.toString()),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Close'),
                        ),
                      ],
                    ),
                  );
                }
              },
              child: const Text('Send Request',
                  style: TextStyle(color: Colors.white))),
        ],
      ),
    );
  }
}
