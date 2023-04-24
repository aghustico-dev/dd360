import 'package:pruebatecnica/config/config.dart';
import 'package:pruebatecnica/presentation/pages/pages.dart';

class Routes extends RouteManager {
  Routes() {
    addAll( PagesApp().routes );
  }
}