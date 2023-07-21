import 'package:flutter/material.dart';

class HelloScreen extends StatefulWidget {
  const HelloScreen({super.key});

  @override
  State<HelloScreen> createState() => _HelloScreenState();
}

class _HelloScreenState extends State<HelloScreen> {
  @override
  Widget build(BuildContext context) {

    var box = Container(
      decoration: BoxDecoration(
        border: Border.all(),
        gradient: const LinearGradient(
          colors: [Colors.black, Colors.red, Colors.blue, Colors.black],
        ),
      ),
      width: 250,
      height: 250,
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(16.0),
      child: const Text('Hello Screen',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                      ),
    );

    var description = const Text(
                            'jsdfgjagjsdhfgahs dan asdjhfgasdhjfgajhsgfd oleh jahsfjhasjdhfgasjd & jhsgdjhasjhdgs',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                          );
    var baris = Row(
      children: <Widget>[box,
                          box,
                          box,
                          Expanded(child: description),
                          const Icon(Icons.sentiment_very_satisfied)
                          ],
    );

    var column = Column(
      children: [
                  // Expanded(child: description),
                  // const Icon(Icons.stadium),
                  box,
                  box,
                ],
    );
    

    var btnSubmit = ElevatedButton(
      onPressed: () {
        // TOAST
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Processing Data')),
        );
        'Hello Screen 2';
      },
      child: const Text('Submit'),
    );

    var tumpukan = Stack(
      children: [baris, column, btnSubmit],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello Screen'),
      ),
      body: Center(
        child: tumpukan,
      ),
    );
  }
}