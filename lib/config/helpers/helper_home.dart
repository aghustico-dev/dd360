import 'package:flutter/material.dart';
import 'package:pruebatecnica/config/config.dart';
import 'package:url_launcher/url_launcher.dart';

void navigateInternalLink( BuildContext context, String link ) {
  switch ( link ) {
    case "home":
      Nav.to( context, LocalRouting.appHome );
      break;
    case "characters":
      Nav.to( context, LocalRouting.appCharacter );
      break;
    // case "comics":
    //   Nav.to( context, LocalRouting.appComic );
    //   break;
    // case "events":
    //   Nav.to( context, LocalRouting.appEvent );
    //   break;
    // case "series":
    //   Nav.to( context, LocalRouting.appSerie );
    //   break;
    // case "stories":
    //   Nav.to( context, LocalRouting.appStorie );
    //   break;
  }
}

Future<void> navigateExternalLink( String link ) async {
  final uri = Uri.parse( link );

  // if( await canLaunchUrl(uri) )
  if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $link');
    }

}