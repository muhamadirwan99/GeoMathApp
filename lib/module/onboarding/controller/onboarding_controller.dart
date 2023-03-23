import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class OnboardingController extends State<OnboardingView>
    implements MvcController {
  static late OnboardingController instance;
  late OnboardingView view;

  int index = 0;

  Container skipButton({void Function(int)? setIndex}) {
    return Container(
      height: 48,
      width: 48,
      decoration: const BoxDecoration(
        color: primaryPurple,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: InkWell(
          onTap: () {
            if (setIndex != null) {
              index = 3;
              setIndex(3);
            }
          },
          child: Center(
              child: Text(
            "Skip",
            style: semiBold12.copyWith(color: neutral50),
          ))
          // child: Padding(
          //   padding: const EdgeInsets.all(8),
          //   child: SvgPicture.asset(
          //     "assets/icon/update/right.svg",
          //     color: neutral50,
          //   ),
          // ),
          ),
    );
  }

  Container get homeButton {
    return Container(
      height: 48,
      width: 48,
      decoration: const BoxDecoration(
        color: primaryPurple,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: InkWell(
        onTap: () {
          Get.offAll(const MenuNavView());
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(
            "assets/icon/update/checklist_2.svg",
          ),
        ),
      ),
    );
  }

  final onboardingPagesList = [
    PageModel(
      widget: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          color: primaryPurple,
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 82.0,
                ),
                SvgPicture.asset(
                  "assets/icon/update/info.svg",
                  width: 120,
                  height: 120,
                ),
                const SizedBox(
                  height: 44.0,
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                    color: neutral50,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 32,
                      horizontal: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kata Pengantar",
                          style: semiBold24.copyWith(color: blue900),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          "Aplikasi Geomath ini disusun agar Ananda lebih memahami matematika. Melalui Geomath ini, Aranda difasilitasi untuk menemukan sendiri konsep - Konsep matematika. Konsep-konsep matematika yang Ananda temukan selanjutnya dapat digunakan untuk menyelesaikan permasalahan matematika yang lain. Bagian yg juga penting dari penggunaan aplikasi Geomath ini adalah untuk meningkatkan minat belajar Ananda dalam belajar matematika. Oleh karena itu, kehadiran aplikasi Geomath ini diharapkan dapat mendorong Ananda untuk mempelajari materi matematika yang disajikan dengan penuh pemahaman dan menginspirasi Ananda untuk mempelajari topik-topik matematika lainnya secara mandiri.",
                          style: reguler14.copyWith(color: neutral900),
                        ),
                        const SizedBox(
                          height: 135.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    PageModel(
      widget: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          color: primaryPurple,
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 82.0,
                ),
                SvgPicture.asset(
                  "assets/icon/update/book_2.svg",
                  width: 120,
                  height: 120,
                ),
                const SizedBox(
                  height: 44.0,
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                    color: neutral50,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 32,
                      horizontal: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kompetensi Dasar",
                          style: semiBold24.copyWith(color: blue900),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1.",
                              style: reguler12.copyWith(color: blue900),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Expanded(
                              child: Text(
                                "Menyusun pemahaman tentang bangun ruang sisi datar (Limas & Prisma) Serta bagian bagiannya.",
                                style: reguler12.copyWith(color: blue900),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "2.",
                              style: reguler12.copyWith(color: blue900),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Expanded(
                              child: Text(
                                "Menyelesaikan masalah yang berkaitan dengan luas permukaan dan Volume bangun ruang sisi datar (limas & Prisma).",
                                style: reguler12.copyWith(color: blue900),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 250.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    PageModel(
      widget: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          color: primaryPurple,
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 82.0,
                ),
                SvgPicture.asset(
                  "assets/icon/update/book.svg",
                  width: 120,
                  height: 120,
                ),
                const SizedBox(
                  height: 44.0,
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                    color: neutral50,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 32,
                      horizontal: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tujuan Pembelajaran",
                          style: semiBold24.copyWith(color: blue900),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          "Tujuan Pembelajaran yang ditargetkan dari penggunaan aplikasi Geomath ini adalah Ananda diharapkan mampu:",
                          style: reguler12.copyWith(color: blue900),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1.",
                              style: reguler12.copyWith(color: blue900),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Expanded(
                              child: Text(
                                "Menjelaskan tentang konsep bangun ruang sisi datar serta bagian-bagiannya.",
                                style: reguler12.copyWith(color: blue900),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "2.",
                              style: reguler12.copyWith(color: blue900),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Expanded(
                              child: Text(
                                "Mendefinisikan bangun ruang sisi datar berdasarkan karakteristik yang dimiliki.",
                                style: reguler12.copyWith(color: blue900),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "3.",
                              style: reguler12.copyWith(color: blue900),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Expanded(
                              child: Text(
                                "Menentukan luas permukaan bangun ruang sisi datar.",
                                style: reguler12.copyWith(color: blue900),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "4.",
                              style: reguler12.copyWith(color: blue900),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Expanded(
                              child: Text(
                                "Menentukan volume bangun ruang sisi datar",
                                style: reguler12.copyWith(color: blue900),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "5.",
                              style: reguler12.copyWith(color: blue900),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Expanded(
                              child: Text(
                                "Menyelesaikan masalah yang berkaitan dengan bangun ruang sisi datar.",
                                style: reguler12.copyWith(color: blue900),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 235.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    PageModel(
      widget: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          color: primaryPurple,
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 82.0,
                ),
                SvgPicture.asset(
                  "assets/icon/update/touch.svg",
                  width: 120,
                  height: 120,
                ),
                const SizedBox(
                  height: 44.0,
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                    color: neutral50,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 32,
                      horizontal: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Petunjuk Penggunaan",
                          style: semiBold24.copyWith(color: blue900),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          "Hal Hal yang perlu Ananda perhatikan dalam menggunakan Aplikasi Geomath ini adalah :",
                          style: reguler12.copyWith(color: blue900),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1.",
                              style: reguler12.copyWith(color: blue900),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Expanded(
                              child: Text(
                                "Sebelum memulai menggunakan aplikasi ini, Ananda harus membaca dan memahami tujuan mempelajari bangun ruang sisi datar.",
                                style: reguler12.copyWith(color: blue900),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "2.",
                              style: reguler12.copyWith(color: blue900),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Expanded(
                              child: Text(
                                "Diharapkan Ananda membaca Keseluruhan isi Geomath (Kata Pengantar, Kompetensi dasar & Tujuan Pembelajaran) sebelum proses pembelajaran dimulai agar proses pembelajaran dapat berlangsung dengan lancar.",
                                style: reguler12.copyWith(color: blue900),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "3.",
                              style: reguler12.copyWith(color: blue900),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Expanded(
                              child: Text(
                                "Ketika menemukan kendala dalam menggunakan Geomath, Ananda dapat berdiskusi dengan teman / bertanya pada Guru.",
                                style: reguler12.copyWith(color: blue900),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "4.",
                              style: reguler12.copyWith(color: blue900),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Expanded(
                              child: Text(
                                "Setelah memahami setiap topik, Ananda diharuskan mengerjakan soal latihan pada setiap Sub-topik yang tersedia.",
                                style: reguler12.copyWith(color: blue900),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "5.",
                              style: reguler12.copyWith(color: blue900),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Expanded(
                              child: Text(
                                "Apabila Ananda telah memahami isi materi Geomath secara keseluruhan, Ananda harus menyelesaikan uji kemampuan yang diberikan Guru Serta mengisi angket minat belajar.",
                                style: reguler12.copyWith(color: blue900),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "6.",
                              style: reguler12.copyWith(color: blue900),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Expanded(
                              child: Text(
                                "Jika Ananda mampu memahami serta menyelesaikannya secara mandiri, maka Ananda dapat dikatakan berhasil dalam menggunakan aplikasi Geomath ini.",
                                style: reguler12.copyWith(color: blue900),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 60.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  ];

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
