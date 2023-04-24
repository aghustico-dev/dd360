import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pruebatecnica/config/config.dart';

Widget itemPageName( BuildContext context, Map<String, dynamic> page, bool isSelected ) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide( color: ( isSelected ) ? Colors.white : Colors.black, width: 2 )
      )
    ),
    child: GestureDetector(
      onTap: () => navigateInternalLink( context, page['link'] ),
      child: Padding(
        padding: const EdgeInsets.symmetric( vertical: 5, horizontal: 15 ),
        child: Text(
          page['name'].toUpperCase(),
          style: Theme.of( context ).primaryTextTheme.titleMedium,
        ),
      ),
    ),
  );
}

Widget navigatioTop( BuildContext context, { int page = -1 } ) {
  AnimeProvider ap = Provider.of<AnimeProvider>( context, listen: false );
  int currentPage = ( page >= 0 ) ? page : ap.currentPage;

  return Column(
    children: <Widget>[
      SizedBox(
        height: 40,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              listaTitulosPaginas.length,
              ( index ) => itemPageName( context, listaTitulosPaginas[index], ( index == currentPage ) )
            ),
          ),
        ),
      ),
      Container( height: 10, color: const Color( 0xFF3e3e3e ) ),
    ],
  );
}