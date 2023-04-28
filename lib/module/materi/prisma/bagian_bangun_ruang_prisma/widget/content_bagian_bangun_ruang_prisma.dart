// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class ContentBagianBangunRuangPrisma extends StatefulWidget {
  const ContentBagianBangunRuangPrisma({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentBagianBangunRuangPrisma> createState() =>
      _ContentBagianBangunRuangPrismaState();
}

class _ContentBagianBangunRuangPrismaState
    extends State<ContentBagianBangunRuangPrisma> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 32.0,
          ),
          Text(
            "Bagian - bagian Bangun Ruang",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Bangun ruang sisi datar merupakan jenis bangun yang dibatasi oleh sisi-sisi berupa bangun datar. Bagian-bagian dari bangun ruang sisi detor terdiri atas titik sudut, rusuk, bidang (atau disebut juga sisi), diagonal bidang, diagonal ruang dan bidang diagonal. Secara detail bagian-bagian dari bangus ruang sisi datar adalah sebagai berikut:",
            style: reguler16.copyWith(
              color: neutral900,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const TextNumberContent(
            number: "1.",
            title: "Titik Sudut",
            content:
                "Titik sudut merupakan titik yang terbentuk akibat perpotongan dua buah rusuk atau lebih pada suatu bangun ruang sisi datar.",
          ),
          const SizedBox(
            height: 8.0,
          ),
          const TextNumberContent(
            number: "2.",
            title: "Rusuk",
            content:
                "Rusuk merupakan ruas garis yang terbentuk akibat perpotongan dua buah bidang pada bangun ruang sisi datar",
          ),
          const SizedBox(
            height: 8.0,
          ),
          const TextNumberContent(
            number: "3.",
            title: "Sisi",
            content:
                "Sisi merupakan bagian pada bangun ruang yang menjadi pembatas antara bagian luar dengan bagian dalam dari sebuah bangun ruang.",
          ),
          const SizedBox(
            height: 8.0,
          ),
          const TextNumberContent(
            number: "4.",
            title: "Diagonal Bidang",
            content:
                "Diagonal merupakan ruas garis yang menghubungkan dua titik Sudut berurutan dari suatu bangun ruang. Diagonal bidang secara tepat membagi bidang dari suatu bangun ruang menjadi dua bagian yang sama besar",
          ),
          const SizedBox(
            height: 8.0,
          ),
          const TextNumberContent(
            number: "5.",
            title: "Diagonal Ruang",
            content:
                "Diagonal ruang merupakan suatu garis yang dibentuk dari dua titik Sudut yang berhadapan dalam suatu bangun ruang sisi datar. Diagonal ruang melintasi tepat di tengah bangun ruang",
          ),
          const SizedBox(
            height: 8.0,
          ),
          const TextNumberContent(
            number: "6.",
            title: "Bidang Diagonal",
            content:
                "Bidang diagonal merupakan sisi yang terbentuk dari gabungan diagonal bidang dan diagonal ruang",
          ),
          const SizedBox(
            height: 8.0,
          ),
        ],
      ),
    );
  }
}
