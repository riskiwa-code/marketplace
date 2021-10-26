final String transaksiTable = "transaksi";

class TransaksiFields {
  static final String id = "_id";
  static final String produkId = "produk_id";
  static final String jumlah = "jumlah";
  static final String status = "status";
}

class TransaksiModel {
  int? id;
  int produkId;
  int jumlah;
  String status;

  TransaksiModel(
      {this.id,
      required this.produkId,
      required this.jumlah,
      required this.status});

  static TransaksiModel fromJson(json) => TransaksiModel(
        id: json[TransaksiFields.id],
        jumlah: json[TransaksiFields.jumlah],
        status: json[TransaksiFields.status],
        produkId: json[TransaksiFields.produkId],
      );

  Map<String, Object?> toJson() => {
        TransaksiFields.id: id,
        TransaksiFields.produkId: produkId,
        TransaksiFields.jumlah: jumlah,
        TransaksiFields.status: status,
      };
}
