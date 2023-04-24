import 'package:pruebatecnica/config/managers/manager.dart';
import 'package:pruebatecnica/presentation/pages/pages.dart';

class PagesApp extends RouteManager {
  static const String name          = '';
  static const String splash        = '${PagesApp.name}/';
  static const String home          = '${PagesApp.name}/home';
  static const String character     = '${PagesApp.name}/character';
  static const String characterInfo = '${PagesApp.name}/characterInfo';
  static const String comic         = '${PagesApp.name}/comic';


  PagesApp() {
    addRoute( PagesApp.splash,        ( context ) => const SplashPage() );
    addRoute( PagesApp.home,          ( context ) => const HomePage() );
    addRoute( PagesApp.character,     ( context ) => const CharacterPage() );
    addRoute( PagesApp.characterInfo, ( context ) => const CharacterInfoPage() );
    addRoute( PagesApp.comic,         ( context ) => const ComicPage() );
  }
}