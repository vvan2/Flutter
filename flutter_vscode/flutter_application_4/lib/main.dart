import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const Mypage(),
    );
  }
}

class Mypage extends StatelessWidget{
  const Mypage({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Snack Bar'),
          centerTitle: true,
        ),
        body: const MysnackBar(),
      )
  }
}


class MysnackBar extends StatelessWidget {
  const MysnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text('Show me'),
      onPressed:(){
        Scaffold.of(context).showSnackBar(SnackN)
      })
  }
}