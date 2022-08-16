import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomReusableTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool? isObscure;
  final Widget? suffixIcon;
  final int? maxLength;
  final TextInputType keyboardtype;
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final VoidCallback? onPressed;
  final ValueChanged<String> onChange;
  final FormFieldSetter<String> onSaved;
  const CustomReusableTextField({
    Key? key,
    required this.labelText,
    required this.hintText,
    this.isObscure,
    this.suffixIcon,
    this.maxLength,
    required this.keyboardtype,
    required this.controller,
    required this.validator,
    this.onPressed,
    required this.onChange,
    required this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            labelText,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        TextFormField(
          style: TextStyle(color: Colors.black),
          obscureText: isObscure ?? false,
          decoration: InputDecoration(
            counterText: '',
            border: OutlineInputBorder(),
            hintText: hintText,
            hintStyle: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w200,
                fontSize: 12,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
            suffixIcon: suffixIcon,
          ),
          maxLength: maxLength,
          keyboardType: keyboardtype,
          controller: controller,
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: onChange,
          onSaved: onSaved,
        ),
      ],
    );
  }
}
