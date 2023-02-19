import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';

class DataDiriView extends StatefulWidget {
  String email, password;
  DataDiriView({
    Key? key,
    required this.email,
    required this.password,
  }) : super(key: key);

  Widget build(context, DataDiriController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icon/arrow_left.svg',
          ),
          onPressed: () {
            Get.to(const DataAkunView());
          },
        ),
        title: Text(
          "Daftar",
          style: semiBold20.copyWith(
            color: neutral900,
          ),
        ),
        backgroundColor: neutral50,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset("assets/icon/update/checklist.svg"),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 4.0,
                      ),
                      Row(
                        children: [
                          Text(
                            "Data Akun",
                            style: semiBold16.copyWith(
                              color: neutral850,
                            ),
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          const SizedBox(
                            width: 40,
                            child: Divider(
                              thickness: 2,
                              color: primaryPurple,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "Melengkapi data akun",
                        style: reguler12.copyWith(
                          color: neutral600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  SvgPicture.asset("assets/icon/update/step_2.svg"),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          "Data Diri",
                          style: semiBold16.copyWith(
                            color: primaryPurple,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Melengkapi data diri",
                          style: semiBold12.copyWith(
                            color: neutral850,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32.0,
              ),
              Text(
                "Nomor Induk Siswa (NIS)",
                style: semiBold16.copyWith(color: primaryPurple),
              ),
              const SizedBox(
                height: 8.0,
              ),
              FormBase(
                hintText: "Masukkan NIS anda disini",
                icon: "assets/icon/update/id.svg",
                onChanged: (value) {
                  controller.emptyNis = controller.checkEmptyField(value);
                  controller.nis = value;
                },
                statusForm: true,
              ),
              const SizedBox(
                height: 4.0,
              ),
              controller.emptyNis
                  ? Container()
                  : Text(
                      "NIS tidak boleh kosong",
                      style: reguler14.copyWith(
                        color: danger500,
                      ),
                    ),
              const SizedBox(
                height: 18.0,
              ),
              Text(
                "Nama",
                style: semiBold16.copyWith(color: primaryPurple),
              ),
              const SizedBox(
                height: 8.0,
              ),
              FormBase(
                hintText: "Masukkan nama anda disini",
                icon: "assets/icon/update/person.svg",
                onChanged: (value) {
                  controller.emptyNama = controller.checkEmptyField(value);
                  controller.nama = value;
                },
                statusForm: true,
              ),
              const SizedBox(
                height: 4.0,
              ),
              controller.emptyNama
                  ? Container()
                  : Text(
                      "Nama tidak boleh kosong",
                      style: reguler14.copyWith(
                        color: danger500,
                      ),
                    ),
              const SizedBox(
                height: 18.0,
              ),
              Text(
                "Pilih Kelas",
                style: semiBold16.copyWith(color: primaryPurple),
              ),
              const SizedBox(
                height: 8.0,
              ),
              DropdownButton<String>(
                isExpanded: true,
                value: controller.kelas,
                hint: Text(
                  'Pilih Kelas',
                  style: reguler14.copyWith(color: neutral500),
                ),
                underline: Container(
                  height: 2,
                  color: neutral500,
                ),
                icon: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: SvgPicture.asset(
                    "assets/icon/update/down.svg",
                    width: 24,
                    color: primaryPurple,
                  ),
                ),
                onChanged: (value) {
                  if (value == null) {
                    controller.emptyKelas = false;
                  }

                  print(controller.emptyKelas);

                  controller.kelas = value.toString();
                  controller.update();
                },
                items: controller.listKelas
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 4.0,
              ),
              controller.emptyKelas
                  ? Container()
                  : Text(
                      "Kelas tidak boleh kosong",
                      style: reguler14.copyWith(
                        color: danger500,
                      ),
                    ),
              const SizedBox(
                height: 32.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: ButtonOutline(
                      text: "Batal",
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return DialogKonfirmasi(
                              txtHeader: "Pembatalan Pendaftaran",
                              txt1:
                                  "Apakah Anda yakin ingin keluar dari proses ",
                              txtBold: "Pendaftaran Akun?",
                              txtButtonOutline: "Tidak",
                              txtButtonFilled: "Ya",
                              onPressedOutline: () {
                                Get.back();
                              },
                              onPressedFilled: () {
                                Get.offAll(const SignInView());
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: ButtonFilled(
                      text: "Daftar",
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return DialogKonfirmasi(
                              txtHeader: "Pemrosesan Pendaftaran",
                              txt1:
                                  "Apakah Anda yakin data yang Anda masukkan sudah ",
                              txtBold: "sesuai?",
                              txtButtonOutline: "Kembali",
                              txtButtonFilled: "Ya, sesuai",
                              onPressedOutline: () {
                                Get.back();
                              },
                              onPressedFilled: () {
                                controller.emptyNis =
                                    controller.checkEmptyField(controller.nis);
                                controller.emptyNama =
                                    controller.checkEmptyField(controller.nama);
                                controller.emptyKelas =
                                    controller.checkEmptyField(
                                  controller.kelas.toString(),
                                );
                                controller.update();
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DataDiriView> createState() => DataDiriController();
}
