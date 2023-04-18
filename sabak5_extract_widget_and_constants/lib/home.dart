import 'package:flutter/material.dart';
import 'package:sabak5_extract_widget_and_constants/components/custom_button.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State <HomePage> createState() =>  _HomePageState();
}

class  _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(title: const Text("Componens and constants"),
    ),
    body: Center(
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
        Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl4xdytWd-7Sd7sMODEFnoSb7V9PCLo9zX8A&usqp=CAU"),
         const CustomButton(
          icon: Icons.phone,
           text: 'Менин телефонум', 
         ),
         const SizedBox(
          height: 15,
          ),
         const CustomButton(
          icon: Icons.mail,
          text: "Электрондук почта",
          ),
          const SizedBox(
            height: 15,
          ),
      ],
     ),
    ),
  );
 }
}

