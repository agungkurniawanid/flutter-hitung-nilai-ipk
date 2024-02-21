import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPopup extends StatefulWidget {
  final double? hasilAkhir;
  final String matematikaNilai;
  final String kimiaNilai;
  final String fisikaNilai;
  final String matematikaKalkukaKalkulus;
  final String algoritmaNilai;
  final String pemrogramanNilai;
  final double? mutuMatematika;
  final double? mutuKimia;
  final double? mutuFisika;
  final double? mutuMatematikaKalkulus;
  final double? mutuAlgoritma;
  final double? mutuPemrograman;
  final double totalsks;
  final double totalperhitungan;
  const MyPopup(
      {super.key,
      required this.hasilAkhir,
      required this.matematikaNilai,
      required this.kimiaNilai,
      required this.fisikaNilai,
      required this.matematikaKalkukaKalkulus,
      required this.algoritmaNilai,
      required this.pemrogramanNilai,
      required this.mutuMatematika,
      required this.mutuKimia,
      required this.mutuFisika,
      required this.mutuMatematikaKalkulus,
      required this.mutuAlgoritma,
      required this.mutuPemrograman,
      required this.totalsks,
      required this.totalperhitungan});
  @override
  State<MyPopup> createState() => _MyPopupState();
}

class _MyPopupState extends State<MyPopup> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Detail Nilai",
                  style:
                      GoogleFonts.poppins(color: Colors.black, fontSize: 24.0)),
            ),
            Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.0)),
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Text(
                      "Nilai IPK :",
                      style: GoogleFonts.poppins(
                          fontSize: 14.0, color: Colors.white),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      (widget.hasilAkhir != null)
                          ? widget.hasilAkhir!.toStringAsFixed(1)
                          : '',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.white),
                    ),
                  ],
                )),
            const SizedBox(
              height: 15.0,
            ),
            Text(
              "Nilai Mutu Didapatkan",
              style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.black),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Table(
              border: TableBorder.all(),
              children: [
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        widget.matematikaNilai,
                        style: GoogleFonts.poppins(
                            fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        (widget.mutuMatematika != null)
                            ? widget.mutuMatematika!.toString()
                            : '',
                        style: GoogleFonts.poppins(
                            fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        widget.kimiaNilai,
                        style: GoogleFonts.poppins(
                            fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        (widget.mutuKimia != null)
                            ? widget.mutuKimia!.toString()
                            : '',
                        style: GoogleFonts.poppins(
                            fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        widget.fisikaNilai,
                        style: GoogleFonts.poppins(
                            fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        (widget.mutuFisika != null)
                            ? widget.mutuFisika!.toString()
                            : '',
                        style: GoogleFonts.poppins(
                            fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        widget.matematikaKalkukaKalkulus,
                        style: GoogleFonts.poppins(
                            fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        (widget.mutuMatematikaKalkulus != null)
                            ? widget.mutuMatematikaKalkulus!.toString()
                            : '',
                        style: GoogleFonts.poppins(
                            fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        widget.algoritmaNilai,
                        style: GoogleFonts.poppins(
                            fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        (widget.mutuAlgoritma != null)
                            ? widget.mutuAlgoritma!.toString()
                            : '',
                        style: GoogleFonts.poppins(
                            fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        widget.pemrogramanNilai,
                        style: GoogleFonts.poppins(
                            fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        (widget.mutuPemrograman != null)
                            ? widget.mutuPemrograman!.toStringAsFixed(1)
                            : '',
                        style: GoogleFonts.poppins(
                            fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Total SKS & Perhitungan",
              style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.black),
            ),
            Table(border: TableBorder.all(), children: [
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Total SKS",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      widget.totalsks.toStringAsFixed(0),
                      style: GoogleFonts.poppins(
                          fontSize: 14.0, color: Colors.black),
                    ),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Total Perhitungan",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      widget.totalperhitungan.toStringAsFixed(0),
                      style: GoogleFonts.poppins(
                          fontSize: 14.0, color: Colors.black),
                    ),
                  ),
                ),
              ]),
            ]),
            const SizedBox(
              height: 15.0,
            ),
            Text(
              "Referensi Perhitungan IPK : https://youtu.be/tbCH5wE1X3E?si=IV_qOzg7CPL-C-c2",
              style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.red),
            ),
            const SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: const Color(0xFF19191B),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Center(
                    child: Text(
                  "Cancel",
                  style:
                      GoogleFonts.poppins(fontSize: 14.0, color: Colors.white),
                )),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
