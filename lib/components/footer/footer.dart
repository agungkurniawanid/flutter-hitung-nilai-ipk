import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFooter extends StatefulWidget {
  const MyFooter({super.key});

  @override
  State<MyFooter> createState() => _MyFooterState();
}

class _MyFooterState extends State<MyFooter> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text("@JTI Polije Tahun 2024",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  shadows: [
                    const Shadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      offset: Offset(2, 2),
                    )
                  ])),
          Text("Prodi Teknik Informatika",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  shadows: [
                    const Shadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      offset: Offset(2, 2),
                    )
                  ])),
          Text("Jurusan Teknologi Informasi",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  shadows: [
                    const Shadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      offset: Offset(2, 2),
                    )
                  ])),
        ],
      ),
    );
  }
}
