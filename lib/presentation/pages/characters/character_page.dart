import 'package:flutter/material.dart';
import 'package:pruebatecnica/presentation/pages/characters/widgets/widget.dart';

class CharacterPage extends StatelessWidget {
  const CharacterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: BodyCharacterPage(),
    ); 
  }
}