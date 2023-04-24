import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pruebatecnica/presentation/pages/splash/widgets/widget.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color( 0xFF052134 ),
      body: BodySplashPage(),
    ); 
  }
}