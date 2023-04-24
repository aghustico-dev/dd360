import 'package:flutter/material.dart';

class ContenHomePage extends StatelessWidget {
  const ContenHomePage({super.key, this.text, this.image});
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          Center(child: Image.asset( image!, fit: BoxFit.cover )),
          Padding(
            padding: EdgeInsets.only( top: MediaQuery.of( context ).size.height * 0.7 ),
            child: Container(
              decoration: const BoxDecoration(
                color:  Color.fromRGBO( 0, 0, 0, 0.8 )
              ),
              height: 50,
              width: 230,
              child: Center(
                child: Text(
                  text!.toUpperCase(),
                  style: Theme.of( context ).primaryTextTheme.titleLarge!.apply( color: const Color( 0xFFBE3A2D ), fontWeightDelta: 2 ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}