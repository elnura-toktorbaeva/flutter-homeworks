
import 'package:flutter/material.dart';
import 'package:sabak10_end_for_loop/home/user_page.dart';
import 'package:sabak10_end_for_loop/model.dart';

final  studentter = <Student>[
  adyl,
  aman,
  alina,
  elya,
  sezim,
];

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _name;
  String? _gmail;

  @override
  Widget build(BuildContext context) {
   /*
    void controlNameEmail(String name, String email) {
    
     for (int i = 0; i <= studentter.length; i++) {
        if (name == studentter[i] && email == studentter[i].email) {
     
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const UserPage()));
          break;
        } else {
     if(i == studentter.length){
      ScaffoldMessenger.of(context).
      showSnackBar(const SnackBar(
        content:
         Text('Сиздин атыныз же почтаныз туура эмес!'),
         ),
         );
     }
       
         }
      }
    }
   */
  void controlNameEmail(String name, String email){
    int index = 0;
    for (final student in studentter){
         index++;
      if (name == student.name && email ==student.email){
     
        Navigator.push(
          context, MaterialPageRoute(
            builder: (context) => UserPage(
              student: student.name
              ),
        ),
        );
        break;
      }else{
        if (index == studentter.length){
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Сиздин атыныз же почтаныз туура эмес!'),
          ),);
        }
      }
    }
  }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('LoginPage'.toUpperCase()),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1564754943164-e83c08469116?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8dmVydGljYWx8ZW58MHx8MHx8&w=1000&q=80'),
                ),
                ),
          child: Container(
            color: const Color.fromARGB(0, 213, 126, 126).withOpacity(0.5),
            width: double.infinity,
            height: double.infinity,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  FlutterLogo(
                    size: 80,
                  ),
                  Text('Flutter'),
                ],
              ),
              const Text(
                "Welcome To Saifty!",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              const Text("Keep your data safe!"),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: TextField(
                  onChanged: (String value) {
                    _name = value;
                    print('Валуе иштеди $value');
                    print('Валуе иштеди $_name');
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: TextField(
                  onChanged: (String value) {
                    _gmail = value;
                    print('Валуе иштеди $value');
                    print('Валуе иштеди $_gmail');
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Gmail',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                ),
                onPressed: () {
                  controlNameEmail(_name!, _gmail!);
                },
                child: const Text('Login'),
              ),
            ],
          ), ),
          
          
        ),
      ),
    );
  }
}
