class ApiEndpoint {

  static const String baseUrl     = "https://gateway.marvel.com:443/v1/public";

  // Keys
  static const String publicKey   = "fea4ddbf370376865724c2b03db5ffef";
  static const String privateKey  = "dcca949708ec8a3a3b97cf51cacf65cd98a314c4";

  // Comic Endpoints
  static const String characters  = "$baseUrl/characters";

  // Información de Heroe
  static const String comics      = "comics";
  static const String events      = "events";
  static const String series      = "series";
  static const String stories     = "stories";





  static const epMaestro                   = "$baseUrl/listaMaestro/getMaestro";
  static const epUbigeo                   = "$baseUrl/listaMaestro/getUbigeo";
}