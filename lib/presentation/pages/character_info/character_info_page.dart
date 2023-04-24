import 'package:flutter/material.dart';
import 'package:pruebatecnica/presentation/pages/character_info/widgets/widgets.dart';

class CharacterInfoPage extends StatelessWidget {
  const CharacterInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: BodyCharacterInfoPage(),
    ); 
  }
}