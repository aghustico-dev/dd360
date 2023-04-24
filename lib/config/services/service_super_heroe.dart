import 'package:pruebatecnica/domain/domain.dart';

class SuperHeroeService {
  const SuperHeroeService( this._superHeroeUseCase );
  final GetSuperHeroeUseCase _superHeroeUseCase;

  Future<ResponseEntity> srvObtenerListaCharacters() async {
    return await _superHeroeUseCase.executeListSuperHeroes().then(
      ( value ) {
        if( value.errores != null ) {
          //Mensaje error
        }
        return value;
      }
    );
  }

  Future<ResponseEntity> srvObtenerComic( String urlEndpoint ) async {
    return await _superHeroeUseCase.executeListComicss( urlEndpoint ).then(
      ( value ) {
        if( value.errores != null ) {
          //Mensaje error
        }
        return value;
      }
    );
  }

}