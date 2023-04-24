
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:pruebatecnica/config/providers/provider.dart';

List<SingleChildWidget> appProviders = [
  ChangeNotifierProvider( create: ( _ ) => AnimeProvider() )
];