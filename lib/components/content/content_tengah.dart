import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KontenTengah extends StatelessWidget {
  const KontenTengah({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
          child: Text(
            "Tugas Hitung IPK Pak Ery",
            style: GoogleFonts.poppins(
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                shadows: [
                  const Shadow(
                    color: Colors.black,
                    blurRadius: 5.0,
                    offset: Offset(2, 2),
                  )
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
          child: Text(
            "Menghitung IPK berdasarkan data dari nilai huruf yang di inputkan pada masing-masing mata kuliah",
            style: GoogleFonts.poppins(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.normal,
                shadows: [
                  const Shadow(
                    color: Colors.black,
                    blurRadius: 5.0,
                    offset: Offset(2, 2),
                  )
                ]),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
