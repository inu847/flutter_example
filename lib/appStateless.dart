import 'package:flutter/material.dart';

class AppStateless extends StatelessWidget {
  const AppStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateless View',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Stateless View'),
        ),
        body: const Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Halaman Utama'),
            ]
          ),
        ),
      ),
    );
  }
}