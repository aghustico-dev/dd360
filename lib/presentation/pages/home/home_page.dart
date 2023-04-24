import 'package:flutter/material.dart';
import 'package:pruebatecnica/presentation/pages/home/widgets/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: BodyHomePage(),
    ); 
  }
}