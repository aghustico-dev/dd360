import 'package:flutter/material.dart';

class Nav {
  static void toNamed(
    BuildContext context,
    String url,
    {
      Object? arguments
    }
  ) => Navigator.pushNamed(
    context,
    url,
    arguments: arguments
  );

  static void to(
    BuildContext context,
    String url,
    {
      Object? arguments,
      Object? result
    }
  ) => Navigator.pushReplacementNamed(
    context,
    url,
    result: result,
    arguments: arguments
  );

  static void close( BuildContext context, [Object? result] ) {
    if( Navigator.canPop( context ) ) {
      Navigator.pop( context, result );
    }
  }
}