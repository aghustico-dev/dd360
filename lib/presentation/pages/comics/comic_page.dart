import 'package:flutter/material.dart';
import 'package:pruebatecnica/presentation/pages/comics/widgets/widget.dart';

class ComicPage extends StatelessWidget {
  const ComicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: BodyComicPage(),
    ); 
  }
}