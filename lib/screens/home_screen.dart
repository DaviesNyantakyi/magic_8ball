import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int imageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'TAP TO CHANGE THE BALL',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32),
              InkWell(
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset('assets/ball$imageNumber.png'),
                ),
                onTap: () {
                  setState(() {
                    imageNumber = Random().nextInt(5) + 1;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
