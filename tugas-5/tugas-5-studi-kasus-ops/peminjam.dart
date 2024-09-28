import 'anggota.dart';
import 'buku.dart';
import 'utils.dart';

class Peminjam {
  Buku buku;
  Anggota anggota;
  DateTime tanggalPinjam;
  DateTime? tanggalKembali;

  Peminjam(this.buku, this.anggota, this.tanggalPinjam, [this.tanggalKembali]);

  void pinjamBuku(){
    title("Peminjaman Buku");
    print('${anggota.nama} meminjam buku "${buku.judul} pada tanggal $tanggalPinjam');
    breakLine();
  }

  void kembalikanBuku(){
    title("Pengembalian Buku");
    DateTime tanggalKembali = DateTime.now();
    print('${anggota.nama} mengembalikan buku "${buku.judul}" pada tanggal $tanggalKembali');
    breakLine();
  }

  void lihatRiwayat(){
    title("Riwayat peminjaman Buku");
    print('Riwayat Peminjaman: ${anggota.nama} meminjam "${buku.judul}" pada $tanggalPinjam');
    if(tanggalKembali != null){
      print(' dan mengembalikan pada $tanggalKembali');
    }
    breakLine();
  }
}