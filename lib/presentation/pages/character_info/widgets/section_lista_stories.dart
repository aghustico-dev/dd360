import 'package:flutter/material.dart';
import 'package:pruebatecnica/config/helpers/helpers.dart';
import 'package:pruebatecnica/domain/domain.dart';

class SectionListaStories extends StatelessWidget {
  const SectionListaStories({super.key, required this.storie});
  final Stories storie;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      padding: const EdgeInsets.symmetric( vertical: 10, horizontal: 10 ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular( 8 )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Text(
              "Stories",
              style: Theme.of(context).primaryTextTheme.labelLarge!.apply( color: Colors.black87, fontWeightDelta: 2 ),
            ),
          ),
          const SizedBox( height: 10 ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                storie.items!.length, 
                (index) => buildItem( context, storie.items![index]! )
              ),
              ),
            )
          )
        ],
      ),
    );
  }

  Widget buildItem( BuildContext context, Item item ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10 ),
      child: GestureDetector(
        onTap: () => loadComicDetails( context, item.resourceURI.toString(), 5 ),
        child: Text(
          item.name!,
          style: Theme.of(context).primaryTextTheme.labelLarge!.apply( color: Colors.black87, fontWeightDelta: 2 ),
        )
      ),
    );
  }
}