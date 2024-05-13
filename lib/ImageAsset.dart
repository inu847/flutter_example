import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageAsset extends StatefulWidget {
  const ImageAsset({super.key});

  @override
  State<ImageAsset> createState() => _ImageAssetState();
}

class _ImageAssetState extends State<ImageAsset> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Image Asset')),
        ),
        body: Center(
          child: Container(
            // color: Colors.black,
            width: 300,
            height: 300,
            padding: const EdgeInsets.all(3),
            // FROM LOCAL => NOTES : HARUS DIMASUKKAN KE pubspec.yaml BARU BISA PANGGIL GAMBARNYA
            // child: Image.asset('assets/images/babyLion.png'),

            // JIKA MENGGUNAKAN IMAGE NETWORK 
            child: Image.network('https://cdn.pixabay.com/photo/2016/07/30/20/40/mario-1557975_960_720.jpg'),

            // CACHE IMAGE
            // child: CachedNetworkImage(
            //   imageUrl: 'https://smart.unisbablitar.ac.id/uploads/unisba/fotouser/thumb/119675.jpg',
            //   placeholder: (context, url) => const CircularProgressIndicator(),
            //   errorWidget: (context, url, error) => const Icon(Icons.error),
            // ),

            // WITH BOX SHAPE
            // decoration: const BoxDecoration(
            //   color: Colors.black,
            //   shape: BoxShape.circle,
            //   image: DecorationImage(
            //     image: AssetImage('assets/images/babyPanda.png'),
            //     fit: BoxFit.cover,
            //   ),
            // ),
          ),


        ),
      ),
    );
  }
}