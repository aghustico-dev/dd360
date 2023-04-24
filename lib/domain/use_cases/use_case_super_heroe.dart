import 'package:pruebatecnica/domain/domain.dart';

abstract class GetSuperHeroeUseCase {
  Future<ResponseEntity> executeListSuperHeroes();
  Future<ResponseEntity> executeListComicss( String urlEndpoint );
  Future<ResponseEntity> executeListEvents( String urlEndpoint );
  Future<ResponseEntity> executeListSeries( String urlEndpoint );
  Future<ResponseEntity> executeListStories( String urlEndpoint );
}

class GetSuperHeroeUseCaseImpl implements GetSuperHeroeUseCase {
  const GetSuperHeroeUseCaseImpl( this._superHeroeRepository );
  final SuperHeroeRepository _superHeroeRepository;
  
  @override
  Future<ResponseEntity> executeListComicss( String urlEndpoint ) async {
    final result = await _superHeroeRepository.getRepoSuperHeroeComics( urlEndpoint );
    return result;
  }
  
  @override
  Future<ResponseEntity> executeListEvents( String urlEndpoint ) async {
    final result = await _superHeroeRepository.getRepoSuperHeroeEvents( urlEndpoint );
    return result;
  }
  
  @override
  Future<ResponseEntity> executeListSeries( String urlEndpoint ) async {
    final result = await _superHeroeRepository.getRepoSuperHeroeSeries( urlEndpoint );
    return result;
  }
  
  @override
  Future<ResponseEntity> executeListStories( String urlEndpoint ) async {
    final result = await _superHeroeRepository.getRepoSuperHeroeStories( urlEndpoint );
    return result;
  }
  
  @override
  Future<ResponseEntity> executeListSuperHeroes()  async {
    final result = await _superHeroeRepository.getRepoSuperHeroeCharacters();
    return result;
  }
}