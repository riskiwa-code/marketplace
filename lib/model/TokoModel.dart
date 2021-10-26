final String tokoTable = "toko";

class TokoFields {
  static final String id = "_id";
  static final String namaToko = "nama_toko";
  static final String slogan = "slogan_toko";
  static final String alamat = "alamat_toko";
  static final String kota = "kota_toko";
  static final String deskripsi = "deskripsi_toko";
  static final String nomorTelepon = "telepon_toko";
}

class TokoModel {
  int? id;
  String namaToko;
  String slogan;
  String alamat;
  String kota;
  String deskripsi;
  String nomorTelepon;

  TokoModel(
      {this.id,
      required this.namaToko,
      required this.slogan,
      required this.deskripsi,
      required this.alamat,
      required this.kota,
      required this.nomorTelepon});

  Map<String, Object?> toJson() => {
        TokoFields.id: id,
        TokoFields.namaToko: namaToko,
        TokoFields.slogan: slogan,
        TokoFields.deskripsi: deskripsi,
        TokoFields.alamat: alamat,
        TokoFields.kota: kota,
        TokoFields.nomorTelepon: nomorTelepon
      };

  static TokoModel fromJson(json) => TokoModel(
        id: json[TokoFields.id],
        namaToko: json[TokoFields.namaToko],
        slogan: json[TokoFields.slogan],
        deskripsi: json[TokoFields.deskripsi],
        alamat: json[TokoFields.alamat],
        kota: json[TokoFields.kota],
        nomorTelepon: json[TokoFields.nomorTelepon],
      );
}
