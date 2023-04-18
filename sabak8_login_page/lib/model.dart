import 'package:flutter/material.dart';

class Student {
    Student( 
      { required this.id,
        required this.name,
       required this.surName,
       required this.age,
       this.phone,
       required this.email,
       this.adress,
       required this.group,
       this.gender, 
       this.marriage});
final int id;
  final String name;
  final String surName;
  int age;
  String? phone;
  final String email;
  final String? adress;
  int group;
  final String? gender;
  String? marriage;
}
final adyl = Student(
  id: 1,
  name: 'Adyl',
   surName: 'Adylov', 
   age: 20,
    email: 'adyl@mail', 
    adress: "Italya",
    group: 1,
    gender: "male"
    );

    final aman = Student(
      id: 2,
  name: 'Aman',
   surName: 'Armanov', 
   age: 29,
    email: 'aman@mail', 
    group: 2,
    phone: "+996700700700",
    marriage: "single",
    );

    final alina = Student(
      id: 3,
  name: 'Alina',
   surName: 'Nurbekova', 
   age: 27,
    email: 'alina@mail', 
    group: 1,
    adress: "Milan",
    gender: "female",
    marriage: "single"
    );

    final elya = Student(
      id: 4,
  name: 'Elya',
   surName: 'Toktobekova', 
   age: 26,
    email: 'elya@mail', 
    group: 1,
    phone: "+996700212717",
    adress: "Amerika"
    );

    final sezim = Student(
      id: 5,
  name: 'Sezim',
   surName: 'Sabaeva', 
   age: 27,
    email: 'sezim@mail', 
    group: 1,);

    List studentter = <Student>[
      adyl,
      aman,
      alina,
      elya,
      sezim,
      ];