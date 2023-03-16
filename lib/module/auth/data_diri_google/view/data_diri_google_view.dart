import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';

class DataDiriGoogleView extends StatefulWidget {
  const DataDiriGoogleView({Key? key}) : super(key: key);

  Widget build(context, DataDiriGoogleController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icon/update/left.svg',
            // ignore: deprecated_member_use
            color: neutral900,
          ),
          onPressed: () {
            FirebaseAuth.instance.signOut();
            Get.offAll(const SignInView());
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
                initialValue: controller.nis,
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
                initialValue: controller.nama,
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
                "Nomor Telepon",
                style: semiBold16.copyWith(color: primaryPurple),
              ),
              const SizedBox(
                height: 8.0,
              ),
              FormBase(
                hintText: "Masukkan nomor telepon anda disini",
                icon: "assets/icon/update/whatsapp.svg",
                onChanged: (value) {
                  controller.emptyNoTel = controller.checkEmptyField(value);
                  controller.noTel = value;
                },
                statusForm: true,
                initialValue: controller.noTel,
              ),
              const SizedBox(
                height: 4.0,
              ),
              controller.emptyNoTel
                  ? Container()
                  : Text(
                      "Nomor telepon tidak boleh kosong",
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
                value: controller.kelas == "" ? null : controller.kelas,
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
                    // ignore: deprecated_member_use
                    color: primaryPurple,
                  ),
                ),
                onChanged: (value) {
                  controller.emptyKelas =
                      controller.checkEmptyField(value.toString());
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
              SizedBox(
                width: MediaQuery.of(context).size.width,
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
                                controller.checkEmptyField(controller.nis!);
                            controller.emptyNama =
                                controller.checkEmptyField(controller.nama!);
                            controller.emptyNoTel =
                                controller.checkEmptyField(controller.noTel!);
                            if (controller.kelas == null) {
                              controller.emptyKelas = false;
                            }
                            controller.update();

                            controller.onSubmit();
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DataDiriGoogleView> createState() => DataDiriGoogleController();
}
