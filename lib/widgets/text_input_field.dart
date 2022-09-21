import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    Key? key,
    required this.textEditingController,
    required this.title,
    required this.textInputType,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final String title;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
        TextField(
          controller: textEditingController,
          keyboardType: textInputType,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
