import 'package:flutter/material.dart';
import 'package:pruebatecnica/config/config.dart';

Widget buscarInput( {String? Function( String? )? onValid } ){
  // final bloc = BlocLoginProvider().authBloc;

  return CustomTextInputField(
    // snapshot: snapshot,
    // onChanged: bloc.changeEmail,
    keyboardType: TextInputType.text,
    textInputAction: TextInputAction.search,
    prefixIcon: Icons.search,
    labelTextStr: 'Buscar',
    validator: ( val ){
      if( val == null || val.isEmpty ){
        return 'Please Input username';
      }
      onValid!( val );
      return null;
    }
  );
}