class Anggota {
  String nama;
  String idAnggota;
  String alamat;

  Anggota(this.nama, this.idAnggota, this.alamat);

  void daftar(){
    print("$nama berhasil ditambahkan menjadi Anggota");
  }

  void hapus(){
    nama = "";
    alamat = "";
  }

  void edit(String namaBaru, String alamatBaru){
    nama = namaBaru;
    alamat = alamatBaru;
  }

  void tampilkanInfo(){
    print("Nama: $nama, ID Anggota: $idAnggota, Alamat: $alamat");
  }
}