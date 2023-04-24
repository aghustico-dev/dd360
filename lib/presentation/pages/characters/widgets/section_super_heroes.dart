import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pruebatecnica/config/config.dart';
import 'package:pruebatecnica/domain/domain.dart';

class SectionSuperHeroes extends StatefulWidget {
  const SectionSuperHeroes({super.key});

  @override
  State<SectionSuperHeroes> createState() => _SectionSuperHeroesState();
}

class _SectionSuperHeroesState extends State<SectionSuperHeroes> {
  AnimeProvider? ap;

  @override
  Widget build(BuildContext context) {
    ap = Provider.of<AnimeProvider>( context, listen: false );
    
    if( ap!.listaSuperHeroes.results!.isEmpty ) {
      return const Center( child: CircularProgressIndicator() );
    }

    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 20 ),
      child: GridView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
          primary: true,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            mainAxisExtent: 200
          ),
          itemCount: ap!.listaSuperHeroes.results!.length,
          itemBuilder: ( BuildContext context, int index ) => moduleItem( ap!.listaSuperHeroes.results![index]! )
      )
    );
  }

  Widget moduleItem( Result data ) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO( 0, 0, 0, .3 ),
        borderRadius: BorderRadius.circular( 8 )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network( "${data.thumbnail!.path}.${data.thumbnail!.extension}" ),
          Text(
            data.name!,
            style: Theme.of(context).primaryTextTheme.labelMedium!.apply( color: Colors.white ),
          ),
          const SizedBox( height: 10 ),
          GestureDetector(
            onTap: () => showCharacterInfo( context, data ),
            child: Text(
              "Details".toUpperCase(),
              style: Theme.of(context).primaryTextTheme.labelSmall!.apply( color: Colors.white ),
            ),
          )
        ],
      ),
    );
  }
}