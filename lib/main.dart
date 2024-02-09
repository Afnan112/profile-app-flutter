// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9DBC98),
        title: Text(
          "My profile",
          style: TextStyle(
              color: Color.fromARGB(255, 18, 18, 18),
              fontSize: 26,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 30),
            CircleAvatar(
              radius: 70,
              backgroundImage:
                  NetworkImage("img/33cbc24d5af733764516bb949795abba.jpg"),
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 15),
            cardProfile(
              "Nmae",
              "Afnan Hassan",
              Icons.person,
            ),
            const SizedBox(height: 20),
            cardProfile(
              "Phone",
              "031258977",
              Icons.phone,
            ),
            const SizedBox(height: 20),
            cardProfile(
              "Address",
              "abc address, xyz city",
              Icons.location_on,
            ),
            const SizedBox(height: 20),
            cardProfile(
              "Email",
              "afnan@gmail.com",
              Icons.mail,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  cardProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 5),
              color: Colors.red.withOpacity(.1),
              spreadRadius: 4,
              blurRadius: 10,
            )
          ]),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(
          iconData,
          size: 26,
          color: Color(0xff9DBC98),
        ),
        trailing: Icon(
          Icons.arrow_forward,
          color: Color(0xff9DBC98),
        ),
      ),
    );
  }
}
