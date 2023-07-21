import 'package:flutter/material.dart';
// import 'package:flutter_application_1/HelloScreen.dart';
import 'package:flutter_application_1/ImageAsset.dart';
import 'package:flutter_application_1/ListViewExample.dart';
// import 'package:flutter_application_1/appStatefull.dart';
// import 'package:flutter_application_1/appStateless.dart';

void main(List<String> args) {
  // runApp(const AppStateless());
  // runApp(const AppStateFull());
  // runApp(const MyApp());
  // runApp(const ImageAsset());
  runApp(const MaterialApp(
      home: ListViewExample()
    )
  );
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   static const String _title = 'Flutter Code Sample';

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: _title,
//       home: HelloScreen(),
//     );
//   }
// }