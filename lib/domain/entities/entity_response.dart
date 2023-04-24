
import 'package:pruebatecnica/domain/entities/entity.dart';

class ResponseEntity {
  ErrorEntity? errores;
  Data? response;

  ResponseEntity( { this.errores, this.response } );
}