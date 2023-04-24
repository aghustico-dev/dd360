import 'package:pruebatecnica/data/data_source/remote/remote_super_heroe.dart';
import 'package:pruebatecnica/domain/domain.dart';

class SuperHeroeRepositoryImpl implements SuperHeroeRepository {
  const SuperHeroeRepositoryImpl( this._remoteDataSource );
  final SuperHeroeDataSource _remoteDataSource;

  @override
  Future<ResponseEntity> getRepoSuperHeroeCharacters() async {
    final data = ResponseEntity();
    final result = await _remoteDataSource.dsObtenerListaSuperHeroes();
    result.fold(
      ( error ) => data.errores = error,
      ( value ) => data.response = value
    );
    return data;
  }

  @override
  Future<ResponseEntity> getRepoSuperHeroeComics( String urlCharacter ) async {
    final data = ResponseEntity();
    final result = await _remoteDataSource.dsObtenerComics( urlCharacter );
    result.fold(
      ( error ) => data.errores = error,
      ( value ) => data.response = value
    );
    return data;
  }

  @override
  Future<ResponseEntity> getRepoSuperHeroeEvents( String urlCharacter ) async {
    final data = ResponseEntity();
    final result = await _remoteDataSource.dsObtenerComics( urlCharacter );
    result.fold(
      ( error ) => data.errores = error,
      ( value ) => data.response = value
    );
    return data;
  }

  @override
  Future<ResponseEntity> getRepoSuperHeroeSeries( String urlCharacter ) async {
    final data = ResponseEntity();
    final result = await _remoteDataSource.dsObtenerComics( urlCharacter );
    result.fold(
      ( error ) => data.errores = error,
      ( value ) => data.response = value
    );
    return data;
  }

  @override
  Future<ResponseEntity> getRepoSuperHeroeStories( String urlCharacter ) async {
    final data = ResponseEntity();
    final result = await _remoteDataSource.dsObtenerComics( urlCharacter );
    result.fold(
      ( error ) => data.errores = error,
      ( value ) => data.response = value
    );
    return data;
  }

}