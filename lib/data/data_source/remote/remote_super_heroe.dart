import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pruebatecnica/config/config.dart';
import 'package:pruebatecnica/domain/domain.dart';

class SuperHeroeDataSource {
  Future<Either<ErrorEntity, Data>> dsObtenerListaSuperHeroes() async {
    var dio = getOptions();
    String hash = getHash();
    try {
      print( "${ApiEndpoint.characters}?$hash" );
      final response = await dio.get( "${ApiEndpoint.characters}?$hash" );
      if( response.statusCode! == 200 ) {
        if( !isNullOrEmpty( jsonDecode( response.toString() )['data'] ) ){
          return right( Data.fromJson( json.decode( response.toString() )['data'] ) );
        } else {
          return left( ErrorEntity.fromJson( json.decode( response.toString() )['data'] ) );
        }
      } else {
        return left( ErrorEntity.fromJson( json.decode( response.toString() )['data'] ) );
      }
    } on DioError catch (e) {
      if ( e.isNoConnectionError ) {
        return left( ErrorEntity(code: "${e.response!.statusCode}", message: e.message ) );
      } else if ( e.response != null ) {
        return left( ErrorEntity(code: "${e.response!.statusCode}", message: e.message ) );
      } else {
        return left( ErrorEntity(code: "${e.response!.statusCode}", message: e.message ) );
      }
    }
  }

  Future<Either<ErrorEntity, Data>> dsObtenerComics( String urlCharacter ) async {
    var dio = getOptions();
    String hash = getHash();
    try {
      print( "$urlCharacter?$hash" );
      final response = await dio.get( "$urlCharacter?$hash" );
      if( response.statusCode! == 200 ) {
        if( !isNullOrEmpty( jsonDecode( response.toString() )['data'] ) ){
          // return right( ResponseSuperHeroes.fromJson( json.decode( response.toString() )['data'] ) );
          return right( Data.fromJson( json.decode( response.toString() )['data'] ) );
        } else {
          return left( ErrorEntity.fromJson( json.decode( response.toString() )['data'] ) );
        }
      } else {
        return left( ErrorEntity.fromJson( json.decode( response.toString() )['data'] ) );
      }
    } on DioError catch (e) {
      if ( e.isNoConnectionError ) {
        return left( ErrorEntity(code: "${e.response!.statusCode}", message: e.message ) );
      } else if ( e.response != null ) {
        return left( ErrorEntity(code: "${e.response!.statusCode}", message: e.message ) );
      } else {
        return left( ErrorEntity(code: "${e.response!.statusCode}", message: e.message ) );
      }
    }
  }

  // Future<Either<ErrorEntity, Data>> dsObtenerEvents( String urlCharacter ) async {
  //   var dio = getOptions();
  //   String hash = getHash();
  //   try {
  //     print( "$urlCharacter?$hash" );
  //     final response = await dio.get( "$urlCharacter?$hash" );
  //     if( response.statusCode! == 200 ) {
  //       if( !isNullOrEmpty( jsonDecode( response.toString() )['data'] ) ){
  //         // return right( ResponseSuperHeroes.fromJson( json.decode( response.toString() )['data'] ) );
  //         return right( Data.fromJson( json.decode( response.toString() )['data'] ) );
  //       } else {
  //         return left( ErrorEntity.fromJson( json.decode( response.toString() )['data'] ) );
  //       }
  //     } else {
  //       return left( ErrorEntity.fromJson( json.decode( response.toString() )['data'] ) );
  //     }
  //   } on DioError catch (e) {
  //     if ( e.isNoConnectionError ) {
  //       return left( ErrorEntity(code: "${e.response!.statusCode}", message: e.message ) );
  //     } else if ( e.response != null ) {
  //       return left( ErrorEntity(code: "${e.response!.statusCode}", message: e.message ) );
  //     } else {
  //       return left( ErrorEntity(code: "${e.response!.statusCode}", message: e.message ) );
  //     }
  //   }
  // }
}