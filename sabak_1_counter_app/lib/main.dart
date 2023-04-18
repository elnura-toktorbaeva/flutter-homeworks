import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Тапшырма 1",
            style: TextStyle(color: Colors.black),
            ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container( 
                width: double.infinity,
                height: 40,
                 child: Center(
                  child: Text(
                  "Сан $index",
                  style: TextStyle(fontSize: 20) ,
                  )),
                decoration: BoxDecoration(
                  color: Colors.grey,borderRadius: BorderRadius.circular(8)),
                ),
                SizedBox(height: 40,),
                Row(
                  //бул ровту экрандын ортосуна алып келуу учун колдонулат
                  mainAxisAlignment: MainAxisAlignment.center,
                  //чил ровго караштуу
                  children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      index--;
                    });
                  }, child: Icon(Icons.remove)),
                  SizedBox(width: 50,),
                  ElevatedButton(onPressed: (){
                   
                   setState(() {
                     index++;
                   });
                  }, child: const Icon(Icons.add))
                ],)
              ],
           ),
        ),
       ),
     );
  }
}