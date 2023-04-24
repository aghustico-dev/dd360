import 'package:pruebatecnica/config/config.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';

bool isNullOrEmpty( dynamic value ) {
  return ( ["", "null", null, false, [], List.empty(), 0].contains( value ) );
}

// String getTimestamp() {
//   return DateTime.now().millisecondsSinceEpoch.toString();
// }

String getHash() {
  String timestamp = DateTime.now().millisecondsSinceEpoch.toString();
  String hashConcatened = '$timestamp${ApiEndpoint.privateKey}${ApiEndpoint.publicKey}';
  String hashMd5 = md5.convert( utf8.encode( hashConcatened ) ).toString();
  return "apikey=${ApiEndpoint.publicKey}&hash=$hashMd5&ts=$timestamp";
}