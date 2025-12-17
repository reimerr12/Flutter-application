import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final controller,
      keyboardType,
      labelText,
      obscureText,
      hintText,
      prefixIcon,
      validator;
  const InputField({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.obscureText,
    required this.labelText,
    required this.hintText,
    required this.prefixIcon,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: keyboardType == TextInputType.visiblePassword ? true : false,
      validator: validator,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
