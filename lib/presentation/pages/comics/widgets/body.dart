import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pruebatecnica/config/config.dart';
import 'package:pruebatecnica/presentation/common/common_widget.dart';

class BodyComicPage extends StatelessWidget {
  const BodyComicPage({super.key});

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
            navigatioTop( context ),
            const SizedBox( height: 10 ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    ( isNullOrEmpty( ap.comicSelected.thumbnail ) )
                    ? Text(
                      ap.comicSelected.title.toString(),
                      style: Theme.of(context).primaryTextTheme.titleLarge!.apply( color: Colors.white ),
                      textAlign: TextAlign.center,
                    )
                    : SizedBox(
                      height: 250,
                      width: double.infinity,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          SizedBox(
                            width: double.infinity,
                            child: Image.network( "${ap.comicSelected.thumbnail!.path}.${ap.comicSelected.thumbnail!.extension}", fit: BoxFit.cover )
                          ),
                          Container(
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO( 0, 0, 0, .6 )
                            ),
                            child: Text(
                              ap.comicSelected.title.toString(),
                              style: Theme.of(context).primaryTextTheme.titleLarge!.apply( color: Colors.white ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox( height: 10 ),
                    isNullOrEmpty( ap.comicSelected.images )
                    ? const SizedBox.shrink()
                    : SizedBox(
                      height: 120,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          ap.comicSelected.images!.length, 
                          (index) {
                            return SizedBox(
                              width: 60,
                              height: double.infinity,
                              child: Image.network( "${ap.comicSelected.images![index]!.path}.${ap.comicSelected.images![index]!.extension}" ),
                            );
                          }
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 200 ,
                      margin: const EdgeInsets.symmetric( horizontal: 20 ),
                      padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular( 8 )
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        physics: const AlwaysScrollableScrollPhysics(),
                        child: Text(
                          (isNullOrEmpty( ap.comicSelected.description ) )
                          ? "Character Description not Available."
                          : ap.comicSelected.description!
                      
                        ),
                      ),
                
                    )
                  ],
                ),
              )
            )
          ],
        ),
      )
    );
  }
}