import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class BerandaView extends StatefulWidget {
  const BerandaView({Key? key}) : super(key: key);

  Widget build(context, BerandaController controller) {
    controller.view = this;

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            expandedHeight: 140.0,
            backgroundColor: primaryPurple,
            floating: true,
            snap: false,
            pinned: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
            title: FutureBuilder<DocumentSnapshot>(
              future: controller.user,
              builder: (BuildContext context,
                  AsyncSnapshot<DocumentSnapshot> snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  Map<String, dynamic> data =
                      snapshot.data!.data() as Map<String, dynamic>;

                  String nama = data["nama"];
                  List listNama = nama.split(" ");
                  String firstName = listNama[0];
                  String lastName = listNama[1];

                  controller.statusPretestLimas = data["statusPretestLimas"];
                  controller.statusPretestPrisma = data["statusPretestPrisma"];

                  return Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "Hi, $firstName $lastName 👋",
                      style: semiBold24.copyWith(
                        color: neutral100,
                      ),
                    ),
                  );
                }
                return Container();
              },
            ),
            flexibleSpace: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32),
                    ),
                    child: Image.asset(
                      "assets/illustration/background_beranda.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned.fill(
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 55, left: 23),
                      child: Text(
                        "Ayo mulai belajar",
                        style: reguler16.copyWith(
                          color: neutral100,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 83, left: 23),
                      child: Text(
                        "di Geomath Bangun Ruang Sisi Datar",
                        style: reguler16.copyWith(
                          color: neutral100,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 23),
                        child: Text(
                          "Materi Pembelajaran 📖",
                          style: semiBold16.copyWith(
                            color: neutral900,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 23),
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  controller.statusPretestPrisma
                                      ? Get.to(const BagianPrismaView())
                                      : showPretestPrismaFirst();
                                },
                                child: Image.asset(
                                  "assets/illustration/prisma.png",
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 16.0,
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Get.to(const BagianLimasView());
                                },
                                child: Image.asset(
                                  "assets/illustration/limas.png",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 23),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/icon/update/info_2.svg",
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Text(
                                      "Informasi",
                                      style: semiBold20.copyWith(
                                          color: neutral900),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 12.0,
                                ),
                                ExpansionTile(
                                  iconColor: primaryPurple,
                                  collapsedIconColor: primaryPurple,
                                  title: Text(
                                    "Kata Pengantar",
                                    style: semiBold16.copyWith(
                                      color: blue900,
                                    ),
                                  ),
                                  leading: SvgPicture.asset(
                                    "assets/icon/update/info.svg",
                                  ),
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 16,
                                        horizontal: 10,
                                      ),
                                      child: ContentKataPengatar(),
                                    ),
                                  ],
                                ),
                                ExpansionTile(
                                  iconColor: primaryPurple,
                                  collapsedIconColor: primaryPurple,
                                  title: Text(
                                    "Kompetensi Dasar",
                                    style: semiBold16.copyWith(
                                      color: blue900,
                                    ),
                                  ),
                                  leading: SvgPicture.asset(
                                    "assets/icon/update/book_2.svg",
                                  ),
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 16,
                                        horizontal: 10,
                                      ),
                                      child: ContentKompetensiDasar(),
                                    ),
                                  ],
                                ),
                                ExpansionTile(
                                  iconColor: primaryPurple,
                                  collapsedIconColor: primaryPurple,
                                  title: Text(
                                    "Tujuan Pembelajaran",
                                    style: semiBold16.copyWith(
                                      color: blue900,
                                    ),
                                  ),
                                  leading: SvgPicture.asset(
                                    "assets/icon/update/book.svg",
                                  ),
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 16,
                                        horizontal: 10,
                                      ),
                                      child: ContentTujuanPembelajaran(),
                                    ),
                                  ],
                                ),
                                ExpansionTile(
                                  iconColor: primaryPurple,
                                  collapsedIconColor: primaryPurple,
                                  title: Text(
                                    "Petunjuk Pengunaan",
                                    style: semiBold16.copyWith(
                                      color: blue900,
                                    ),
                                  ),
                                  leading: SvgPicture.asset(
                                    "assets/icon/update/touch.svg",
                                  ),
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 16,
                                        horizontal: 10,
                                      ),
                                      child: ContentPetunjuk(),
                                    ),
                                  ],
                                ),
                                ExpansionTile(
                                  iconColor: primaryPurple,
                                  collapsedIconColor: primaryPurple,
                                  title: Text(
                                    "Tentang Aplikasi",
                                    style: semiBold16.copyWith(
                                      color: blue900,
                                    ),
                                  ),
                                  leading: SvgPicture.asset(
                                    "assets/icon/update/app_shortcut.svg",
                                  ),
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 16,
                                        horizontal: 10,
                                      ),
                                      child: ContentTentangApp(),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<BerandaView> createState() => BerandaController();
}
