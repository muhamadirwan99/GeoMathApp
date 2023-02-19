class User {
  final String id;
  final String email;
  final String nama;
  final String nis;
  final String kelas;

  User({
    required this.id,
    required this.email,
    required this.nama,
    required this.nis,
    required this.kelas,
  });

  User.fromData(Map<String, dynamic> data)
      : id = data['id'],
        email = data['email'],
        nama = data['nama'],
        nis = data['nis'],
        kelas = data['kelas'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'nama': nama,
      'nis': nis,
      'kelas': kelas,
    };
  }
}
