import 'package:flutter/material.dart';

class Counterscreen extends StatefulWidget {
  @override
  State<Counterscreen> createState() => CounterscreenState();
}

class CounterscreenState extends State<Counterscreen> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COUNTER'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  
                });
                counter--;
                print('$counter');
              },
              child: Text(
                'Minus',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 20,
              ),
              child: Text(
                '$counter',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  
                });
                counter++;
                print('$counter');
              },
              child: Text(
                'plus',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
