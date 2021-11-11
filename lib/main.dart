import 'package:class_twenty_one/second_page.dart';
import 'package:flutter/material.dart';
import './models/product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (ctx) => MyFirstPage(),
        SecondPage.routName: (ctx) => SecondPage(),
      },
      // home: MyFirstPage(),
    );
  }
}

class MyFirstPage extends StatelessWidget {
  final String name = 'CBR 1000RR FireBlade';
  final double price = 12000;
  const MyFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            Text(price.toString()),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, SecondPage.routName,
                      arguments: Product(name, price));
                },
                child: Text('Go to Next Page'))
          ],
        ),
      ),
    );
  }
}
