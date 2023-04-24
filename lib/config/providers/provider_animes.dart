import 'package:flutter/material.dart';
import 'package:pruebatecnica/domain/domain.dart';

class AnimeProvider extends ChangeNotifier {

  int _currentPage = 0;
  int get currentPage => _currentPage;
  set currentPage( int value ) {
    _currentPage = value;
    notifyListeners();
  }

  Data _listaSuperHeroes = Data();
  Data get listaSuperHeroes => _listaSuperHeroes;
  set listaSuperHeroes( Data value ) {
    _listaSuperHeroes = value;
    notifyListeners();
  }

  Result _characterSelected = Result();
  Result get characterSelected => _characterSelected;
  set characterSelected( Result value ) {
    _characterSelected = value;
    notifyListeners();
  }

  Result _comicSelected = Result();
  Result get comicSelected => _comicSelected;
  set comicSelected( Result value ) {
    _comicSelected = value;
    notifyListeners();
  }

  // Result _comicSelected = Result();
  // Result get comicSelected => _comicSelected;
  // set comicSelected( Result value ) {
  //   _comicSelected = value;
  //   notifyListeners();
  // }
  
}