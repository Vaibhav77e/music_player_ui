import 'package:flutter/material.dart';
import '../models/neubox.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'P L A Y L I S T',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.black),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.grey[300],
      body: Column(children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          padding: const EdgeInsets.all(25.0),
          child: NeuBox(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'images/location_background.jpg',
                    // fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
