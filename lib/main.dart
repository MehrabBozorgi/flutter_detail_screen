import 'package:flutter/material.dart';

import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: Colors.grey[800],
                ),
                const SizedBox(width: 15),
                Icon(
                  Icons.more_horiz,
                  size: 30,
                  color: Colors.grey[800],
                ),
              ],
            ),
            Image.asset(
              'headphone.png',
              height: 250,
              width: double.infinity,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Samsung',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Noise Cancelling',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.favorite_outline,
                    color: Colors.indigo,
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    primary: Colors.white,
                    shadowColor: button1Color,
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Text(
                        '399.0',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 20),
                    primary: button1Color,
                    elevation: 15,
                    shadowColor: button1Color,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 50),
                decoration: const BoxDecoration(
                  color: detailColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          RowWidget(iconData: Icons.wifi, text: 'true'),
                          RowWidget(iconData: Icons.check, text: 'Samsung'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          RowWidget(iconData: Icons.palette, text: 'black'),
                          RowWidget(iconData: Icons.headset, text: 'Over Ear'),
                        ],
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        child: Text(
                          'Digital noise cancelling: Industry '
                          'leading ANC lends a personalized'
                          ', virtually soundproof experience.'
                          'Voice assistant: Alexa enabled for'
                          ' voice access to music, information '
                          'and more. Activate with a simple touch'
                          '.Quick attention mode: Cover the right '
                          'ear cup to turn down your music for instant,'
                          ' easy conversation.',
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

  class RowWidget extends StatelessWidget {
    final String text;
    final IconData iconData;

    const RowWidget({
      Key? key,
      required this.text,
      required this.iconData,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Column(
        children: [
          Card(
            color: cardColor,
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Icon(iconData),
            ),
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 18),
          ),
        ],
      );
    }
  }
