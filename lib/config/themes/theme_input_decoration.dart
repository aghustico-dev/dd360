import 'package:flutter/material.dart';

InputDecoration otpInputDecoration( BuildContext context, String? labelText, String? hintText, Widget? suffixIcon, Widget? prefixIcon, AsyncSnapshot? snapshot ){
  return InputDecoration(
    counterText: '',
    labelText: labelText,
    hintText: hintText,
    fillColor: const Color.fromRGBO( 240, 244, 252, 1 ),
    filled: true,
    suffixIcon: suffixIcon,
    prefixIcon: prefixIcon,
    labelStyle: Theme.of(context).primaryTextTheme.bodySmall!.apply(color: const Color.fromRGBO(104, 151, 203, 1)),
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    border: const UnderlineInputBorder(),
    focusedBorder: focusedBorder(),
    enabledBorder: enabledBorder(),
    errorBorder: errorBorder(),
    focusedErrorBorder: focusedErrorBorder(),
    disabledBorder: disabledBorder(),
    errorText: (snapshot != null && snapshot.hasError) ? snapshot.error.toString() : null
  );
}

UnderlineInputBorder focusedBorder(){
  return const UnderlineInputBorder(
    borderSide: BorderSide( color: Color.fromRGBO( 3, 82, 169, 0.10 ) )
  );
}

UnderlineInputBorder enabledBorder(){
  return const UnderlineInputBorder(
    borderSide: BorderSide( color: Color.fromRGBO( 3, 82, 169, 0.10 ) )
  );
}

UnderlineInputBorder errorBorder(){
  return const UnderlineInputBorder(
    borderSide: BorderSide( color: Color.fromRGBO( 3, 82, 169, 0.10 ) )
  );
}

UnderlineInputBorder focusedErrorBorder(){
  return const UnderlineInputBorder(
    borderSide: BorderSide( color: Color.fromRGBO( 3, 82, 169, 0.10 ) )
  );
}

UnderlineInputBorder disabledBorder(){
  return const UnderlineInputBorder(
    borderSide: BorderSide( color: Color.fromRGBO( 3, 82, 169, 0.10 ) )
  );
}