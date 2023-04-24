import 'package:flutter/material.dart';
// import 'package:pruebatecnica/config/config.dart';

class HeaderBack extends StatelessWidget {
  const HeaderBack({super.key, required this.titulo});
  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only( top: 20.0, bottom: 10.0 ),
      child: Column(
        children: <Widget>[
          const SizedBox( width: 24 ),
          Center( child: Text( titulo.toUpperCase(), style: Theme.of(context).primaryTextTheme.titleLarge!.apply( color: const Color.fromARGB( 221, 159, 42, 42 ), fontWeightDelta: 2 ) ) ),
        ],
      ),
    );
  }
}