import 'package:class_twenty_one/models/product.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  static const routName = '/second';

  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
        appBar: AppBar(
          title: Text('My Second Page'),
        ),
        body: Center(
          child: Text('Your ${args.name} is cost \$${args.price}'),
        ));
  }
}
