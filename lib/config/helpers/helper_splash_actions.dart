import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pruebatecnica/config/config.dart';
import 'package:pruebatecnica/data/data.dart';
import 'package:pruebatecnica/domain/domain.dart';

Future<void> loadSuperHeroes( BuildContext context ) async {
  final SuperHeroeService service = SuperHeroeService(
    GetSuperHeroeUseCaseImpl( SuperHeroeRepositoryImpl( SuperHeroeDataSource() ) )
  );

  await service.srvObtenerListaCharacters().then(
    ( ResponseEntity result ) {
      if( !isNullOrEmpty( result.response ) ) {
        AnimeProvider ap = Provider.of<AnimeProvider>( context, listen: false );
        ap.listaSuperHeroes = result.response!;

        if( context.mounted ) {
          Nav.to( context, LocalRouting.appHome );
        }
      }
    }
  );
}