import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pruebatecnica/config/config.dart';
import 'package:pruebatecnica/data/data.dart';
import 'package:pruebatecnica/domain/domain.dart';

void showCharacterInfo( BuildContext context, Result characterSelected ) {
  AnimeProvider ap = Provider.of<AnimeProvider>( context, listen: false );
  ap.characterSelected = characterSelected;
  Nav.toNamed( context, LocalRouting.appCharacterInfo );
}

Future<void> loadComicDetails( BuildContext context, String urlEnpoint, int page ) async {
  final SuperHeroeService service = SuperHeroeService(
    GetSuperHeroeUseCaseImpl( SuperHeroeRepositoryImpl( SuperHeroeDataSource() ) )
  );

  await service.srvObtenerComic( urlEnpoint ).then(
    ( ResponseEntity result ) {
      if( !isNullOrEmpty( result.response ) ) {
        AnimeProvider ap = Provider.of<AnimeProvider>( context, listen: false );
        ap.comicSelected = result.response!.results[0];
        ap.currentPage = page;

        if( context.mounted ) {
          Nav.to( context, LocalRouting.appComic );
        }
      }
    }
  );
}

// Future<void> loadEventDetails( BuildContext context, String urlEnpoint ) async {
//   final SuperHeroeService service = SuperHeroeService(
//     GetSuperHeroeUseCaseImpl( SuperHeroeRepositoryImpl( SuperHeroeDataSource() ) )
//   );

//   await service.srvObtenerComic( urlEnpoint ).then(
//     ( ResponseEntity result ) {
//       if( !isNullOrEmpty( result.response ) ) {
//         AnimeProvider ap = Provider.of<AnimeProvider>( context, listen: false );
//         ap.comicSelected = result.response!.results[0];

//         if( context.mounted ) {
//           Nav.to( context, LocalRouting.appComic );
//         }
//       }
//     }
//   );
// }