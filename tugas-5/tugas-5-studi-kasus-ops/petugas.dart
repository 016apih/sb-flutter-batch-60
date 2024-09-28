import 'anggota.dart';
import 'buku.dart';
import 'utils.dart';

class Petugas {
  String nama;
  String idPetugas;

  Petugas(this.nama, this.idPetugas);

  bool login(String pwd){
    if(pwd == "password"){
      print('$nama berhasil login');
      return true;
    } else {
      print('Login Gagal: password salah.');
      return false;
    }
  }

  Future<void> kelolaBuku({ required Buku buku, Buku? editBuku, required String aksi, int? jumlah }) async{
    if(aksi == 'tambah'){
      title("Tambah Buku");
      buku.tambah(jumlah ?? 1);
      breakLine();
    } else if(aksi == "hapus"){
      title("Hapus Buku");
      buku.hapus(jumlah ?? 1);
      breakLine();
    } else if(aksi == "edit"){
      title("Edit Buku");
      if(editBuku != null){
        buku.edit(
          judulBaru: editBuku.judul,
          isbnBaru: editBuku.isbn,
          pengarangBaru: editBuku.pengarang
        );
      } else {
        print("Masukan parameter buku");
      }
      breakLine();
      
      title("Hasil Pembaruan Buku");
      buku.tampilkanInfo();
      breakLine();
    }
  }

  void kelolaAnggota(Anggota anggota, String aksi, [String? nama, String? alamat]){
    if(aksi == 'daftar'){
      anggota.daftar();
    } else if(aksi == 'hapus'){
      anggota.hapus();
    } else if(aksi == 'edit'){
      anggota.edit(nama ?? 'nama baru', alamat ?? 'alamat baru');
    }
  }

  void tampilkanInfo(){
    print("Nama Petugas: $nama, ID Petugas: $idPetugas");
  }
}