import 'anggota.dart';
import 'buku.dart';
import 'peminjam.dart';
import 'petugas.dart';

void main(){
  Buku buku1 = Buku("Pemrograman Dart", "John Doe", "9876543210", 3);
  Anggota anggota1 = Anggota("Jane Smith", "A002", "jl. Sudirman");
  Petugas petugas1 = Petugas("Admin", "P001");

  // login
  petugas1.login("password");

  // kelola buku
  petugas1.kelolaBuku(buku: buku1, aksi: 'tambah', jumlah: 3);
  petugas1.kelolaBuku(buku: buku1, aksi: 'hapus', jumlah: 3);

  // edit buku
  Buku editBuku = Buku("Pemrograman Baru", "Joko Tingkir", "978-602-8519-93", 3);
  petugas1.kelolaBuku(buku: buku1, aksi: 'edit', editBuku: editBuku);

  // contoh peminjaman buku
  Peminjam peminjam1 = Peminjam(buku1, anggota1, DateTime.now());
  peminjam1.pinjamBuku();
  peminjam1.lihatRiwayat();

  // contoh pengembalian
  peminjam1.kembalikanBuku();
  peminjam1.lihatRiwayat();
}