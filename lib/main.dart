import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'config/constants/constant.dart';

// void main() {
//   runApp(const MyApp());
// }
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle( const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
  ) );
  SystemChrome.setPreferredOrientations( [DeviceOrientation.portraitUp] )
    .then( ( value ) => runApp(
      MultiProvider(
        providers: appProviders,
        child: const MyApp()
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: ( BuildContext context, Widget? widget ){
        return MediaQuery(
          data: MediaQuery.of( context ).copyWith( textScaleFactor: 1.1 ), 
          child: widget!
        );
      },
      // supportedLocales: const [ Locale('es', 'ES') ],
      title: 'Prueba técnica DD360',
      initialRoute: '/',
      routes: Routes().routes,
    );
  }
}