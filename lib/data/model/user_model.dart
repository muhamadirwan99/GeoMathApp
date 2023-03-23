class UserModel {
  final String id;
  final String email;
  final String nama;
  final String nis;
  final String kelas;
  final String noTel;
  final bool statusPretestPrisma;
  final bool statusPretestLimas;

  UserModel({
    required this.id,
    required this.email,
    required this.nama,
    required this.nis,
    required this.kelas,
    required this.noTel,
    required this.statusPretestPrisma,
    required this.statusPretestLimas,
  });

  UserModel.fromData(Map<String, dynamic> data)
      : id = data['id'],
        email = data['email'],
        nama = data['nama'],
        nis = data['nis'],
        kelas = data['kelas'],
        noTel = data['noTel'],
        statusPretestPrisma = data['statusPretestPrisma'],
        statusPretestLimas = data['statusPretestLimas'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'nama': nama,
      'nis': nis,
      'kelas': kelas,
      'noTel': noTel,
      'statusPretestPrisma': statusPretestPrisma,
      'statusPretestLimas': statusPretestLimas,
    };
  }
}
