import 'package:flutter/material.dart';

class AppStateFull extends StatefulWidget {
  const AppStateFull({super.key});

  @override
  State<AppStateFull> createState() => _AppStateFullState();
}

class _AppStateFullState extends State<AppStateFull> {
  int angka = 1;

  void increment(){
    setState(() {
      angka ++;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Statefull View',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => increment(),
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Statefull View'),
        ),
        body: Center(
          child: Text('Angka : $angka')
        ),
      ),
    );
  }
}