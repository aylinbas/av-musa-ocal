import 'package:av_musa_ocal/extension/context_extensions.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final bool? readOnly;
  final TextAlign? textAlign;
  final TextInputType? keyboardType;
  final String? prefixText;
  final VoidCallback? onTap;
  final Widget? suffixIcon;
  final double? fontSize;
  final Function(String)? onChanged;

  const CustomTextField(
      {super.key,
      this.controller,
      this.hintText,
      this.readOnly,
      this.textAlign,
      this.keyboardType,
      this.prefixText,
      this.onTap,
      this.suffixIcon,
      this.onChanged,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: context.colorScheme.onBackground,
      onTap: onTap,
      controller: controller,
      readOnly: readOnly ?? false,
      textAlign: textAlign ?? TextAlign.center,
      keyboardType: readOnly == null ? keyboardType : null,
      onChanged: onChanged,
      decoration: InputDecoration(
          hintText: hintText,
          isDense: true,
          prefixText: prefixText,
          suffix: suffixIcon,
          hintStyle: TextStyle(
            fontSize: fontSize ?? 18,
            color: const Color.fromARGB(255, 167, 164, 161),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: context.colorScheme.secondary),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: context.colorScheme.secondary, width: 2),
          )),
    );
  }
}
