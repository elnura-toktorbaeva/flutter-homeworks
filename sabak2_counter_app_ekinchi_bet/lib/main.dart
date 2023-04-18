 // import- bul bardyk flatterge tieweluu nerselerdi ozuno kamtyit naprimer widjet
 import 'package:flutter/material.dart';
import 'package:sabak_2/ekinchibet.dart';
//  import "../secondPage.dart";
 //void- ech nerse kaitarbait
 //main- negizgi funksia
 //()- funksianyn funksia ekenin bildiret
 //{}- funksianyn denesi
void main() {
  //runApp- sizdin tirkemenizdi bawtoo funksiasy al ichine widjet alat
  //MyApp- klass je widjettin atalywy
 runApp(const MyApp());
}
//class MyApp- class
//extends- muras aluu => StatelessWidget
class MyApp extends StatelessWidget {
  //classtyn konstruktoru
  const MyApp({super.key});
  //@override- 
 @override
 //build-kuruu al ozuno widget alat
 //BuildContext- bul adres widgetterdi kozomoldochu vector
Widget build(BuildContext context) {
  //return- kaitarat emneni kaitarat?MaterialAppty kaitarat
  //Materialapp- materialdyk dizainy bar jany flatter koldonmosun tuzot
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    //theme- bul tema MaterialAppka tieweluu svoistvo
    theme: ThemeData (
      primarySwatch: Colors.blue,
    ),
    //home- ui. materialapptyn svoistvosu
    //MyHOmePage() bul bir widget je class
    home: const MyHomePage (
    ),
  );
 }
} 



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index =0;
  @override
  Widget build(BuildContext context) {
return Scaffold(
  backgroundColor: Colors.white,
  appBar: AppBar(
    backgroundColor: Colors.white,
  // ignore: prefer_const_constructors
  title: Center(
    child: const Text(
      "Тапшырма 1",
      style: TextStyle(color:Colors.black ),),
  ),
  elevation: 0,
  ),
  body: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            
            width: double.infinity,
            height: 40,
            child: Center(child: Text("Сан: $index",
            style:  const TextStyle(fontSize: 30),)),
            decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(10) ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  index--;
                });
              }, child: const Icon(Icons.remove)),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(onPressed:() {
                setState(() {
                  index++;
                });
              }, child: const Icon(Icons.add)),
              
             ],
            ),
            const SizedBox(height: 10,
            ),
            IconButton(onPressed: (){
             Navigator.push(
              context, MaterialPageRoute(
                builder: (context)=>  EkinchiBet(
                  count: index,
                  ),),); 
            }, 
            // ignore: prefer_const_constructors
            icon: Icon(
              Icons.next_plan,
            size: 40,
            color: Colors.orange,
            ),) ,
          ],
        ),
    ),
  ),
);
  
}
}
  

