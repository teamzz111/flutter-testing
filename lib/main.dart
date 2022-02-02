import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Reto con imagen',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Prueba de imagen"),
        ),
        body: Stack(
          children: [
            Image.network(
              'https://i.pinimg.com/originals/ba/27/0c/ba270c79d0c0429612374ba5b455f6f9.jpg',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.maxFinite,
            ),
            Center(
              child: Container(
              decoration: const BoxDecoration(
                color: Colors.black45,
              ),
              child: const Text(
                'Ay papá un poio',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),)
        ],),
      )
      );
    
  }
}
