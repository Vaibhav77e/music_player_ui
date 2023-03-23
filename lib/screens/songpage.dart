import 'package:flutter/material.dart';
import '../models/neubox.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../models/button_style.dart';

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
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            NeuBox(
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'images/location_background.jpg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kota The Friend',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.grey.shade700),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Birdie',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.red,
                        size: 34,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('0:00'),
                IconButton(onPressed: () {}, icon: const Icon(Icons.shuffle)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.repeat)),
                const Text('5:00'),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: LinearPercentIndicator(
                lineHeight: 10,
                percent: 0.5,
                progressColor: Colors.green,
              ),
            ),
            SizedBox(
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: NewButton(
                        buttonVal: Icon(
                          Icons.skip_previous,
                          size: 30,
                        ),
                      )),
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: NewButton(
                              buttonVal: Icon(
                                Icons.play_arrow,
                                size: 30,
                              ),
                            ),
                          )),
                      Expanded(
                          child: NewButton(
                        buttonVal: Icon(
                          Icons.skip_next,
                          size: 30,
                        ),
                      )),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}


//
