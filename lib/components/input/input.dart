import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class InputNilai extends StatefulWidget {
  final String title;
  final TextEditingController controllers;
  const InputNilai({Key? key, required this.title, required this.controllers})
      : super(key: key);

  @override
  State<InputNilai> createState() => _InputNilaiState();
}

class _InputNilaiState extends State<InputNilai> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title, // Mengakses widget.title
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            )),
        const SizedBox(
          height: 10.0,
        ),
        TextField(
            controller: widget.controllers,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText:
                    'Masukkan Nilai Huruf! A / AB / B / BC / C / CD / D / E',
                hintStyle: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 12.0,
                ))),
        const SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
