import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<String> GambarRamen = [
      "img_1.png",
      "img_2.png",
      "img_3.png",
      "img_4.png",
      "img_5.png",
      "img_6.png"
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications,
                color: const Color.fromARGB(255, 0, 0, 0)),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(bottom: 5)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            child: TextField(
              controller: null,
              style: const TextStyle(
                fontFamily: 'Poppins Light',
                fontSize: 16,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Search",
                hintText: "Search",
                contentPadding:
                EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                hintStyle: const TextStyle(
                  fontFamily: 'Poppins Light',
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 240),
            child: Text(
              'Top Menu',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 5)),
          Expanded(
            child: GridView.builder(
              itemCount: GambarRamen.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/images/${GambarRamen[i]}'),
                );
              },
            ),
          ),
          But
        ],
      ),
    );
  }
}

