import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label
  });
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: TextFormField(
        decoration: InputDecoration(
          label: Text(
            label,
            style: const TextStyle(color: Color(0xffc0c0c0)),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffc0c0c0))
          )
        ),
      ),
    );
  }
}