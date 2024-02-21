import 'package:flutter/material.dart';
import 'package:flutter_hitung_index_prestasi/components/content/content_tengah.dart';
import 'package:flutter_hitung_index_prestasi/components/footer/footer.dart';
import 'package:flutter_hitung_index_prestasi/components/header/header.dart';
import 'package:flutter_hitung_index_prestasi/components/input/input.dart';
import 'package:flutter_hitung_index_prestasi/components/popup/hasil.dart';
import 'package:google_fonts/google_fonts.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  TextEditingController matematika = TextEditingController();
  TextEditingController kimia = TextEditingController();
  TextEditingController fisika = TextEditingController();
  TextEditingController matematikaKalkulus = TextEditingController();
  TextEditingController algoritma = TextEditingController();
  TextEditingController pemrograman = TextEditingController();

  // hasil total
  double? totalAkhir;
  double totalSKS = 1;
  double totalMutu = 1;

  // inisialisasi untuk bobot sks
  double sksMatematika = 3;
  double sksKimia = 3;
  double sksFisika = 4;
  double sksMatematikaKalkulus = 3;
  double sksAlgoritma = 3;
  double sksPemrograman = 2;

  // inisialisasi untuk mutu sks
  double? mutuMatematika;
  double? mutuKimia;
  double? mutuFisika;
  double? mutuMatematikaKalkulus;
  double? mutuAlgoritma;
  double? mutuPemrograman;

  void hitungIPK() {
    // ambil nilai input dan konversi ke double
    String matematikaNilai = matematika.text.toUpperCase();
    String kimiaNilai = kimia.text.toUpperCase();
    String fisikaNilai = fisika.text.toUpperCase();
    String matematikaKalkulusNilai = (matematikaKalkulus.text.toUpperCase());
    String algoritmaNilai = algoritma.text.toUpperCase();
    String pemrogramanNilai = pemrograman.text.toUpperCase();

    if (matematikaNilai == 'A') {
      mutuMatematika = 4;
    } else if (matematikaNilai == 'AB') {
      mutuMatematika = 3.5;
    } else if (matematikaNilai == 'B') {
      mutuMatematika = 3;
    } else if (matematikaNilai == 'BC') {
      mutuMatematika = 2.5;
    } else if (matematikaNilai == 'C') {
      mutuMatematika = 2;
    } else if (matematikaNilai == 'CD') {
      mutuMatematika = 1.5;
    } else if (matematikaNilai == 'D') {
      mutuMatematika = 1;
    } else if (matematikaNilai == 'E') {
      mutuMatematika = 0;
    }

    if (kimiaNilai == 'A') {
      mutuKimia = 4;
    } else if (kimiaNilai == 'AB') {
      mutuKimia = 3.5;
    } else if (kimiaNilai == 'B') {
      mutuKimia = 3;
    } else if (kimiaNilai == 'BC') {
      mutuKimia = 2.5;
    } else if (kimiaNilai == 'C') {
      mutuKimia = 2;
    } else if (kimiaNilai == 'CD') {
      mutuKimia = 1.5;
    } else if (kimiaNilai == 'D') {
      mutuKimia = 1;
    } else if (kimiaNilai == 'E') {
      mutuKimia = 0;
    }

    if (fisikaNilai == 'A') {
      mutuFisika = 4;
    } else if (fisikaNilai == 'AB') {
      mutuFisika = 3.5;
    } else if (fisikaNilai == 'B') {
      mutuFisika = 3;
    } else if (fisikaNilai == 'BC') {
      mutuFisika = 2.5;
    } else if (fisikaNilai == 'C') {
      mutuFisika = 2;
    } else if (fisikaNilai == 'CD') {
      mutuFisika = 1.5;
    } else if (fisikaNilai == 'D') {
      mutuFisika = 1;
    } else if (fisikaNilai == 'E') {
      mutuFisika = 0;
    }

    if (matematikaKalkulusNilai == 'A') {
      mutuMatematikaKalkulus = 4;
    } else if (matematikaKalkulusNilai == 'AB') {
      mutuMatematikaKalkulus = 3.5;
    } else if (matematikaKalkulusNilai == 'B') {
      mutuMatematikaKalkulus = 3;
    } else if (matematikaKalkulusNilai == 'BC') {
      mutuMatematikaKalkulus = 2.5;
    } else if (matematikaKalkulusNilai == 'C') {
      mutuMatematikaKalkulus = 2;
    } else if (matematikaKalkulusNilai == 'CD') {
      mutuMatematikaKalkulus = 1.5;
    } else if (matematikaKalkulusNilai == 'D') {
      mutuMatematikaKalkulus = 1;
    } else if (matematikaKalkulusNilai == 'E') {
      mutuMatematikaKalkulus = 0;
    }

    if (algoritmaNilai == 'A') {
      mutuAlgoritma = 4;
    } else if (algoritmaNilai == 'AB') {
      mutuAlgoritma = 3.5;
    } else if (algoritmaNilai == 'B') {
      mutuAlgoritma = 3;
    } else if (algoritmaNilai == 'BC') {
      mutuAlgoritma = 2.5;
    } else if (algoritmaNilai == 'C') {
      mutuAlgoritma = 2;
    } else if (algoritmaNilai == 'CD') {
      mutuAlgoritma = 1.5;
    } else if (algoritmaNilai == 'D') {
      mutuAlgoritma = 1;
    } else if (algoritmaNilai == 'E') {
      mutuAlgoritma = 0;
    }

    if (pemrogramanNilai == 'A') {
      mutuPemrograman = 4;
    } else if (pemrogramanNilai == 'AB') {
      mutuPemrograman = 3.5;
    } else if (pemrogramanNilai == 'B') {
      mutuPemrograman = 3;
    } else if (pemrogramanNilai == 'BC') {
      mutuPemrograman = 2.5;
    } else if (pemrogramanNilai == 'C') {
      mutuPemrograman = 2;
    } else if (pemrogramanNilai == 'CD') {
      mutuPemrograman = 1.5;
    } else if (pemrogramanNilai == 'D') {
      mutuPemrograman = 1;
    } else if (pemrogramanNilai == 'E') {
      mutuPemrograman = 0;
    }

    // bobot sks kali nilai mutu
    double perhitunganMatematika = sksMatematika * mutuMatematika!;
    double perhitunganKimia = sksKimia * mutuKimia!;
    double perhitunganFisika = sksFisika * mutuFisika!;
    double perhitunganMatematikaKalkulus =
        sksMatematikaKalkulus * mutuMatematikaKalkulus!;
    double perhitunganAlgoritma = sksAlgoritma * mutuAlgoritma!;
    double perhitunganPemrograman = sksPemrograman * mutuPemrograman!;
    totalMutu = perhitunganMatematika +
        perhitunganKimia +
        perhitunganFisika +
        perhitunganMatematikaKalkulus +
        perhitunganAlgoritma +
        perhitunganPemrograman;

    // jumlah total sks
    totalSKS = sksMatematika +
        sksKimia +
        sksFisika +
        sksMatematikaKalkulus +
        sksAlgoritma +
        sksPemrograman;

    // hasil akhir
    totalAkhir = totalMutu / totalSKS;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            color: Color(0xFF6762B7),
            image: DecorationImage(
                image: AssetImage('assets/bg.png'), fit: BoxFit.cover)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyHeader(),
              Column(
                children: [
                  const KontenTengah(),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                padding: const EdgeInsets.all(20.0),
                                width: MediaQuery.of(context).size.width,
                                height: 500.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: SingleChildScrollView(
                                  child: Column(children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Icon(
                                            Icons.close,
                                            color: Colors.black,
                                            size: 24.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Scroll Down",
                                          style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0),
                                        ),
                                        const Icon(Icons.arrow_downward)
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    InputNilai(
                                      title: "Matematika",
                                      controllers: matematika,
                                    ),
                                    InputNilai(
                                      title: "Kimia",
                                      controllers: kimia,
                                    ),
                                    InputNilai(
                                      title: "Fisika",
                                      controllers: fisika,
                                    ),
                                    InputNilai(
                                      title: "Matematika Kalkulus",
                                      controllers: matematikaKalkulus,
                                    ),
                                    InputNilai(
                                      title: "Algoritma",
                                      controllers: algoritma,
                                    ),
                                    InputNilai(
                                      title: "Pemrograman",
                                      controllers: pemrograman,
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        hitungIPK();
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return MyPopup(
                                              hasilAkhir: totalAkhir,
                                              matematikaNilai: matematika.text,
                                              kimiaNilai: kimia.text,
                                              fisikaNilai: fisika.text,
                                              matematikaKalkukaKalkulus:
                                                  matematikaKalkulus.text,
                                              pemrogramanNilai:
                                                  pemrograman.text,
                                              algoritmaNilai: algoritma.text,
                                              mutuAlgoritma: mutuAlgoritma,
                                              mutuFisika: mutuFisika,
                                              mutuKimia: mutuKimia,
                                              mutuMatematika: mutuMatematika,
                                              mutuMatematikaKalkulus:
                                                  mutuMatematikaKalkulus,
                                              mutuPemrograman: mutuPemrograman,
                                              totalsks: totalSKS,
                                              totalperhitungan: totalMutu,
                                            );
                                          },
                                        );
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(15.0),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                            color: const Color(0xFF19191B),
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        child: Center(
                                            child: Text(
                                          "Proses Nilai!",
                                          style: GoogleFonts.poppins(
                                              fontSize: 14.0,
                                              color: Colors.white),
                                        )),
                                      ),
                                    ),
                                  ]),
                                ),
                              );
                            });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white,
                        ),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.symmetric(
                              vertical: 20.0,
                              horizontal: 20.0), // Atur padding di dalam tombol
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10.0), // Mengatur borderRadius
                            side: BorderSide.none, // Menghilangkan border
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all<Size>(
                          Size(MediaQuery.of(context).size.width / 2,
                              50.0), // Atur tinggi tombol
                        ),
                      ),
                      child: Text(
                        "Mulai Inputkan Nilai",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const MyFooter(),
            ]),
      ),
    );
  }
}
