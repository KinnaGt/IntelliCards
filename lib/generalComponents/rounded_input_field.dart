import 'package:flutter/material.dart';
import 'package:intellicards/generalComponents/text_field_container.dart';

import '../constants/constanst.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final int maxLength;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required int this.maxLength,
    required this.onChanged, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        maxLength: maxLength,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          counterText: "",
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
