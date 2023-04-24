import 'package:pruebatecnica/domain/domain.dart';

abstract class SuperHeroeRepository {
  Future<ResponseEntity> getRepoSuperHeroeCharacters();
  Future<ResponseEntity> getRepoSuperHeroeComics( String idCharacter );
  Future<ResponseEntity> getRepoSuperHeroeEvents( String idCharacter );
  Future<ResponseEntity> getRepoSuperHeroeSeries( String idCharacter );
  Future<ResponseEntity> getRepoSuperHeroeStories( String idCharacter );
}