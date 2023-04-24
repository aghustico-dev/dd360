import 'package:flutter/material.dart';
import 'package:pruebatecnica/config/config.dart';
import 'package:pruebatecnica/presentation/common/common_widget.dart';
import 'package:pruebatecnica/presentation/pages/home/widgets/widget.dart';

class BodyHomePage extends StatefulWidget {
  const BodyHomePage({super.key});

  @override
  State<BodyHomePage> createState() => _BodyHomePageState();
}

class _BodyHomePageState extends State<BodyHomePage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: SizedBox(
        width: MediaQuery.of( context ).size.width,
        height: MediaQuery.of( context ).size.height,
        child: Column(
          children: [
            navigatioTop( context, page: 0 ),
            Expanded(
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                onPageChanged: (value){
                  setState( () => currentPage = value );
                },
                itemCount: listaImagesPages.length,
                itemBuilder: ( context, index ) => ContenHomePage(
                    image: listaImagesPages[index]['image'],
                    text: listaImagesPages[index]['name'],
                  ),
              ),
            ),
          ],
        ),
      )
    );
  }

  // Widget itemPageName( BuildContext context, Map<String, dynamic> page ) {
  //   return GestureDetector(
  //     onTap: () => navigateLink( context, page['link'] ),
  //     child: Padding(
  //       padding: const EdgeInsets.symmetric( vertical: 5, horizontal: 15 ),
  //       child: Text(
  //         page['name'].toUpperCase(),
  //         style: Theme.of( context ).primaryTextTheme.titleMedium,
  //       ),
  //     ),
  //   );
  // }
}