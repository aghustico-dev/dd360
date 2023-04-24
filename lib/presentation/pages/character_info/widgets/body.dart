import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pruebatecnica/config/config.dart';
import 'package:pruebatecnica/presentation/common/common_widget.dart';
import 'package:pruebatecnica/presentation/pages/character_info/widgets/widgets.dart';

class BodyCharacterInfoPage extends StatelessWidget {
  const BodyCharacterInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    AnimeProvider ap = Provider.of<AnimeProvider>( context, listen: false );

    return SafeArea(
      top: true,
      child: SizedBox(
        width: MediaQuery.of( context ).size.width,
        height: MediaQuery.of( context ).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            navigatioTop( context, page: 1 ),
            const SizedBox( height: 10 ),
            Center(
              child: Text(
                ap.characterSelected.name.toString(),
                style: Theme.of(context).primaryTextTheme.titleLarge!.apply( color: Colors.white ),
              ),
            ),
            const SizedBox( height: 10 ),
            Center(
              child: Text(
                ap.characterSelected.description!.isEmpty ? 'Character description not Available.' : ap.characterSelected.description.toString(),
                style: Theme.of(context).primaryTextTheme.bodySmall!.apply( color: Colors.white ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox( height: 10 ),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(
                  ap.characterSelected.urls!.length,
                  (index) {
                    return GestureDetector(
                      onTap: () => navigateExternalLink( ap.characterSelected.urls![index]!.url.toString() ),
                      child: Text(
                        ap.characterSelected.urls![index]!.type.toString().toUpperCase(),
                        style: Theme.of(context).primaryTextTheme.bodySmall!.apply( color: const Color( 0xFFBE3A2D ), fontWeightDelta: 2 ),
                      ),
                    );
                  }
                )
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: Image.network( "${ap.characterSelected.thumbnail!.path}.${ap.characterSelected.thumbnail!.extension}", fit: BoxFit.cover ),
                    ),
                    const SizedBox( height: 20 ),
                    SectionListaComics( comic: ap.characterSelected.comics! ),
                    const SizedBox( height: 20 ),
                    SectionListaSeries( serie: ap.characterSelected.series! ),
                    const SizedBox( height: 20 ),
                    SectionListaEvents( event: ap.characterSelected.events! ),
                    const SizedBox( height: 20 ),
                    SectionListaStories( storie: ap.characterSelected.stories! ),
                    const SizedBox( height: 20 ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}