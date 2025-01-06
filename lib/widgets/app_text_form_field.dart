import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  final bool? isRequired;
  final String hintText;
  final String labelText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final int? maxLines;
  final void Function(String)? onFieldSubmitted;

  const AppTextFormField({
    super.key,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.controller,
    this.validator,
    this.keyboardType,
    this.isRequired,
    required this.labelText,
    this.prefixIcon,
    this.onChanged,
    this.onTap,
    this.maxLines,
    this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return 
        
        TextFormField(
          textAlignVertical: TextAlignVertical.center,
          controller: controller,
          onFieldSubmitted: onFieldSubmitted,
          maxLines: maxLines ?? 1,
          keyboardType: keyboardType,
          onChanged: onChanged,
          onTap: onTap,
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.greenAccent,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(40),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.greenAccent,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(40),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.greenAccent,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(40),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.greenAccent,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(40),
            ),
            hintText: hintText,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
          ),
          obscureText: isObscureText ?? false,
          validator: validator,
  
    );
  }
}
