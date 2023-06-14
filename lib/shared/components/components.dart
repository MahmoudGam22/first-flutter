import 'package:flutter/material.dart';

Widget defaultbutton({
  double width = double.infinity,
  Color background = Colors.blue,
  double borderradius = 3,
  required VoidCallback function,
  required String text,
  bool isuppercase = true,
}) =>
    Container(
      height: 40,
      width: width,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isuppercase ? text.toUpperCase() : text,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderradius),
        color: background,
      ),
    );

Widget defaultff({
  required TextEditingController controller,
  required TextInputType kType,
  void Function(String)? onsubmit,
  required String? Function(String?)? validate,
  required String label,
  required Icon prefix,
  IconData? suffix,
  bool ispassword = false,
  void Function()? suffixpressed,
}) =>
    TextFormField(
      obscureText: ispassword,
      validator: validate,
      controller: controller,
      keyboardType: kType,
      onFieldSubmitted: onsubmit,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        prefixIcon: prefix,
        suffixIcon: suffix != null ? IconButton(
          onPressed:suffixpressed ,icon: Icon(suffix)) : null,
      ),
    );
