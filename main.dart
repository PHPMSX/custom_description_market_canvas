import 'package:flutter/material.dart';
import 'package:my_demo/description_market.dart';

void main() {
  runApp(
      const MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: DescriptionMarket(
        height: 60,
        text: 'Phạm',
        colorText: Colors.white,
        backgroundColor: Colors.red,
      ),
    ));
  }
}
