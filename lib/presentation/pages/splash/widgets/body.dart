import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:pruebatecnica/config/config.dart';

class BodySplashPage extends StatefulWidget {
  const BodySplashPage({super.key});

  @override
  State<BodySplashPage> createState() => _BodySplashPageState();
}

class _BodySplashPageState extends State<BodySplashPage> with AfterLayoutMixin<BodySplashPage> {
  @override
  void afterFirstLayout( BuildContext context ) => loadSuperHeroes( context );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.of( context ).size.width,
        height: MediaQuery.of( context ).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset( "assets/images/logo_dd360.png" ),
            const Center( child: CircularProgressIndicator() )
          ],
        ),
      )
    );
  }
}