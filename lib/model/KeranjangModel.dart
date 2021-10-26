final String keranjangTable = "keranjang";

class KeranjangFields {
  static final List<String> values = [id, produkId, jumlah];

  static final String id = "_id";
  static final String produkId = "produk_id";
  static final String jumlah = "jumlah";
}

class KeranjangModel {
  int? id;
  int produkId;
  int jumlah;

  KeranjangModel({
    this.id,
    required this.produkId,
    required this.jumlah,
  });

  static KeranjangModel fromJson(json) => KeranjangModel(
        id: json[KeranjangFields.id],
        jumlah: json[KeranjangFields.jumlah],
        produkId: json[KeranjangFields.produkId],
      );

  Map<String, Object?> toJson() => {
        KeranjangFields.id: id,
        KeranjangFields.produkId: produkId,
        KeranjangFields.jumlah: jumlah,
      };
}
