import 'dart:math';

import 'package:flutter/material.dart';


class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int firstDice = 1; 
  int secondDice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE93B),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text
        ("Тапшырма 5",
        style: TextStyle(
          color: Colors.black),),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row
          (children: [
            Expanded(
              child: InkWell(
              onTap: (){
               setState(() {
                firstDice = Random().nextInt(6) + 1; 
                secondDice = Random() .nextInt(6) +1;
               });
                print(firstDice);
              } ,
               child: Image.asset('assets/images/dice$firstDice.png'))),
            const SizedBox(
              width: 25,),
            Expanded(
              child: InkWell(
              onTap: () {
                setState(() {
                  firstDice = Random().nextInt(6) + 1;
                   secondDice = Random().nextInt(6) + 1; 
                });
              },
               child: Image.asset('assets/images/dice$secondDice.png'))),
            // Images.asset('assets/images/dice3.png),
            // Image.asset('assets/images/dice4.png'),
            // Image.asset('assets/images/dice5.png'),
            // Image.asset('assets/images/dice6.png'),
          ],),
        ),
      ],),
    );
  }
}