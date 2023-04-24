import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pruebatecnica/config/config.dart';

class CustomTextInputField extends StatelessWidget {
  const CustomTextInputField({
    Key? key,
    this.prefixIcon = Icons.ac_unit,
    this.labelTextStr,
    this.hintTextStr,
    this.initialValue,
    this.obscureText = false,
    this.keyboardType,
    this.textInputAction,
    this.controller,
    this.validator,
    this.onSaved,
    this.suffixIcon, 
    this.onChanged, 
    this.inputFormatters, 
    this.maxLength, 
    this.enabled = true, 
    this.readOnly = false,
    this.snapshot,
  }) : super(key: key);
  final IconData? prefixIcon;
  final String? labelTextStr;
  final String? hintTextStr;
  final String? initialValue;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final Function(String? value)? validator; 
  final Function? onSaved;
  final Function? onChanged;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final bool? enabled;
  final bool readOnly;
  final AsyncSnapshot? snapshot;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        inputFormatters: inputFormatters,
        maxLength: maxLength,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        style: Theme.of(context).primaryTextTheme.titleMedium!.apply( color: const Color.fromRGBO( 3, 82, 169, 1 ) ),
        // onSaved: ( value ) => onSaved!( value ),
        onSaved: onSaved as void Function(String? x)?,
        onChanged: onChanged as void Function(String? x)?,
        // validator: ( value ) => validator!( value ),
        obscureText: obscureText,
        enabled: enabled,
        readOnly: readOnly,
        textCapitalization: TextCapitalization.words,
        controller: controller,
        initialValue: initialValue,
        decoration: otpInputDecoration(
          context,
          labelTextStr,
          hintTextStr,
          suffixIcon,
          Icon( prefixIcon ),
          snapshot
        ),
      ),
    );
  }
}