import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    // LIST DATA KELOMPOK ARRAY MULTI DIMENSION
    final List<List<String>> PecelMenu = [
      ['Pecel Sambel Tumpang', 'Pecel, Sambel Tumpang, Telur Bali, Usus', 'https://i.ibb.co/Smfw2R0/pecel2.jpg','4.5'],
      ['Pecel Sambel Tumpang', 'Pecel, Sambel Tumpang, Telur Bali, Usus', 'https://i.ibb.co/Smfw2R0/pecel2.jpg','4.5'],
      ['Pecel Sambel Tumpang', 'Pecel, Sambel Tumpang, Telur Bali, Usus', 'https://i.ibb.co/Smfw2R0/pecel2.jpg','4.5'],
      ['Pecel Sambel Tumpang', 'Pecel, Sambel Tumpang, Telur Bali, Usus', 'https://i.ibb.co/Smfw2R0/pecel2.jpg','4.5'],
      ['Pecel Sambel Tumpang', 'Pecel, Sambel Tumpang, Telur Bali, Usus', 'https://i.ibb.co/Smfw2R0/pecel2.jpg','4.5'],
      ['Pecel Sambel Tumpang', 'Pecel, Sambel Tumpang, Telur Bali, Usus', 'https://i.ibb.co/Smfw2R0/pecel2.jpg','4.5'],
      ['Pecel Sambel Tumpang', 'Pecel, Sambel Tumpang, Telur Bali, Usus', 'https://i.ibb.co/Smfw2R0/pecel2.jpg','4.5'],
      ['Pecel Sambel Tumpang', 'Pecel, Sambel Tumpang, Telur Bali, Usus', 'https://i.ibb.co/Smfw2R0/pecel2.jpg','4.5'],
      ['Pecel Sambel Tumpang', 'Pecel, Sambel Tumpang, Telur Bali, Usus', 'https://i.ibb.co/Smfw2R0/pecel2.jpg','4.5'],
      ['Pecel Sambel Tumpang', 'Pecel, Sambel Tumpang, Telur Bali, Usus', 'https://i.ibb.co/Smfw2R0/pecel2.jpg','4.5'],
      ['Pecel Sambel Tumpang', 'Pecel, Sambel Tumpang, Telur Bali, Usus', 'https://i.ibb.co/Smfw2R0/pecel2.jpg','4.5'],
      ['Pecel Sambel Tumpang', 'Pecel, Sambel Tumpang, Telur Bali, Usus', 'https://i.ibb.co/Smfw2R0/pecel2.jpg','4.5'],
      ['Pecel Sambel Tumpang', 'Pecel, Sambel Tumpang, Telur Bali, Usus', 'https://i.ibb.co/Smfw2R0/pecel2.jpg','4.5'],
    ];

    final List<List<dynamic>> ListCategory = [
      [
        'Menu Spesial',
       Colors.green,
        const EdgeInsets.symmetric(vertical: 50.0, horizontal: 100.0),
        const Icon(
                  Icons.rice_bowl,
                  color: Colors.black,
                ),
      ],
      [
        'Menu Terlaris',
       Colors.red,
       const EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
       const Icon(
                  Icons.flatware_outlined,
                  color: Colors.black,
                ),
      ],
      [
        'Minuman',
       Colors.blue,
       const EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
       const Icon(
                  Icons.coffee,
                  color: Colors.black,
                ),
      ],
    ];

    // ARRAY LINK FOTO
    final List<String> PecelHeader = [
      'https://i.ibb.co/s1RpfXD/pecel.jpg',
      'https://i.ibb.co/s1RpfXD/pecel.jpg',
      'https://i.ibb.co/s1RpfXD/pecel.jpg',
      'https://i.ibb.co/s1RpfXD/pecel.jpg',
      'https://i.ibb.co/s1RpfXD/pecel.jpg',
    ];
    
    // LIST DATA PecelMenu WITH ACTION TO ROUTE /detail
    final List<Widget> listMonthWithAction = List.generate(
      // PUSH DETAIL IN SCREENDEYAIL
      PecelMenu.length, (index) => ListTile(
        // VIEW INDEX 0-3
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TEXT WITH BACKGROUND COLOR FULL WIDTH
            Container(
              color: Colors.yellow,
              width: double.infinity,
              // ICON STAR
              child: Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.black,
                    ),
                    Text(
                      PecelMenu[index][3],
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
              ),
            ),
            Text(PecelMenu[index][0]),
          ],
        ),

        subtitle: Text(PecelMenu[index][1]),
        leading: CachedNetworkImage(
          imageUrl: PecelMenu[index][2],
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailScreen(PecelMenu[index]),
            ),
          );
        },
      ),
    );

    // LIST VIEW WITH STACK AND SCROLLBAR RIGHT I VARIABLE Link
    final List<Widget> image = List.generate(
      PecelHeader.length, (index) => Stack(
        children: [
          CachedNetworkImage(
            imageUrl: PecelHeader[index],
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              color: Colors.black.withOpacity(0.5),
              child: const Column(
                children: [
                  Text(
                    'Pecel Sambel Tumpang',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Pecel, Sambel Tumpang, Telur Bali, Usus',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ),
          ),
        ],
      ),
    );

    // LIST VIEW WITH STACK AND SCROLLBAR RIGHT IN VARIABLE ListCategory CARD BACKGROUND COLOR
    final List<Widget> category = List.generate(
      ListCategory.length, (index) => Stack(
        children: [
          Container(
            color: ListCategory[index][1],
            padding: ListCategory[index][2],
            // TEXT WITH ICON
            child: Column(
              children: [
                ListCategory[index][3],
                Text(
                  ListCategory[index][0],
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );

    // VIEW
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('ListView Example')),
        ),
        body: Column(
          children: [
            // CALL VARIABLE image
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: image,
              ),
            ), 

            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: category,
              ),
            ),           

            // LISTVIEW
            Expanded(
              child: ListView(
                children: listMonthWithAction,
              ),
            ),
          ],
        ),

        bottomNavigationBar: const MyAppbar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: const MyActionButton(),
      ),
    );
  }
}

// DETAIL ROUTE
class DetailScreen extends StatelessWidget {
  const DetailScreen(this.mahasiswa, {Key? key}) : super(key: key);
  
  final List mahasiswa;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mahasiswa[0]),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[            
           
            // FOTO MAHASISWA
            CachedNetworkImage(
              imageUrl: mahasiswa[2],
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),

            // NAMA MAHASISWA
            Text(
              "Nama Mahasiswa : ${mahasiswa[0]}",
              textAlign: TextAlign.left,
              style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontStyle: FontStyle.italic,
                                    )
            ),
            
            // NIM MAHASISWA
            Text("NIM            : ${mahasiswa[1]}",
            textAlign: TextAlign.left,
            style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontStyle: FontStyle.italic,
                                    )
            ),

            //JOBDESK MAHASISWA
            Text("Jobdesk     : ${mahasiswa[3]}",
            textAlign: TextAlign.left,
            style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontStyle: FontStyle.italic,
                                    )
            ),

            //JOBDESK MAHASISWA
            // Text("Jobdesk     : ${mahasiswa[4]}",
            // textAlign: TextAlign.left,
            // style: const TextStyle(
            //                           fontSize: 10,
            //                           fontWeight: FontWeight.bold,
            //                           color: Colors.black,
            //                           fontStyle: FontStyle.italic,
            //                         )
            // )
          ],
        ),
      ),
    );
  }
}


class MyAppbar extends StatelessWidget {
  const MyAppbar ({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60.0,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Column(
                children: <Widget>[
                  Icon(Icons.home),
                  Text('Home', style: TextStyle(fontSize: 12.0))
                ],
              ),
              const Column(
                children: <Widget>[
                  Icon(Icons.search, color: Colors.black45),
                  Text('Search', style: TextStyle(fontSize: 12.0))
                ],
              ),
              Container(
                width: 100.0,
              ),
              const Column(
                children: <Widget>[
                  Icon(Icons.shop, color: Colors.black45),
                  Text(
                    'Wishlist',
                    style: TextStyle(fontSize: 12.0),
                  )
                ],
              ),
              const Column(
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.black45,
                  ),
                  Text('Cart', style: TextStyle(fontSize: 12.0))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyActionButton extends StatelessWidget {
  const MyActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      child: ClipPath(
        clipper: HexagonClipper(),
        child: Container(
          color: Colors.yellow,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FaIcon(FontAwesomeIcons.book),
              SizedBox(
                height: 4.0,
              ),
              Text(
                'Menu',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HexagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double radius = size.width / 2;

    path.moveTo(size.width / 2 + radius, size.height / 2);

    for (int i = 1; i <= 6; i++) {
      double x = size.width / 2 + radius * cos(2 * pi / 6 * i);
      double y = size.height / 2 + radius * sin(2 * pi / 6 * i);
      path.lineTo(x, y);
    }

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}