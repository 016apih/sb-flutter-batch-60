class Buku {
  String judul;
  String pengarang;
  String isbn;
  int jumlah;

  Buku(this.judul, this.pengarang, this.isbn, this.jumlah);

  void tambah(int n){
    jumlah += n;
    print("$judul berhasil ditambahkan. Jumlah sekarang: $jumlah");
  }

  void hapus(int n){
    jumlah -= n;
    print("$judul berhasil dihapus. Jumlah sekarang: $jumlah");
  }

  void edit({String? judulBaru, String? isbnBaru, String? pengarangBaru}){
    if(judulBaru != null) judul = judulBaru;
    if(isbnBaru != null) isbn = isbnBaru;
    if(pengarangBaru != null) pengarang = pengarangBaru;
    print("Judul: $judul, Pengarang: $pengarang, ISBN: $isbn, Jumlah: $jumlah");
  }

  void tampilkanInfo(){
    print("Judul: $judul, Pengarang: $pengarang, ISBN: $isbn, Jumlah: $jumlah");
  }
}