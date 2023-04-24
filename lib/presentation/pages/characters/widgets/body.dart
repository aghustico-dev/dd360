import 'package:flutter/material.dart';
import 'package:pruebatecnica/presentation/common/common_widget.dart';
import 'package:pruebatecnica/presentation/pages/characters/widgets/widget.dart';
import 'package:pruebatecnica/presentation/presentation.dart';

class BodyCharacterPage extends StatelessWidget {
  const BodyCharacterPage({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    String textoFiltro = '';

    return SafeArea(
      top: true,
      child: SizedBox(
        // padding: const EdgeInsets.only( left: 10, top: 20, right: 10 ),
        width: MediaQuery.of( context ).size.width,
        height: MediaQuery.of( context ).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            navigatioTop( context, page: 1 ),
            const SizedBox( height: 10 ),
            Padding(
              padding: const EdgeInsets.symmetric( horizontal: 20 ),
              child: buscarInput(
                onValid: ( value ) => textoFiltro = value!
              ),
            ),
            const HeaderBack( titulo: 'CHARACTERS' ),
            const Expanded( 
              child: SectionSuperHeroes()
            )
          //   const Center( child: CircularProgressIndicator() )
          ],
        ),
      )
    );
  }
}