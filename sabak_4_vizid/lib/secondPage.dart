import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(height: 250,
            width: 250,
              child: CircleAvatar(backgroundImage: NetworkImage(  "https://cdn.seeklearning.com.au/media/images/career-guide/module/analyst-programmer-module.jpg"),
              ),
            ),
          SizedBox(height: 20,
          ),
            Text("Кандай Програмист")
         ],
        ),
      ),
    );
  }
}