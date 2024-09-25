import 'dart:io';

void title(String str){
  print("");
  print("=== $str ===");
}

void main() {
  // No 1. Ternary operator 
  title("Soal No 1: Ternary operator");
  print("Apakah anda akan menginstall aplikasi dart?");
  String? is_install = stdin.readLineSync()!;
  is_install.toLowerCase() == "y" ? print("anda akan menginstall aplikasi dart") : print("aborted");

  // No 2. f-else if dan else
  title("Soal No 2: If-else if dan else");
  print("masukkan nama Anda: ");
  String? nama = stdin.readLineSync()!;
  print("masukkan peran Anda: ");
  String? peran = stdin.readLineSync()!;

  if(nama == ""){
    print("Nama harus diisi!");
  } else if(peran == ""){
    print("Halo $nama, Pilih peranmu untuk memulai game!");
  } else {
    print("Selamat datang di Dunia Werewolf, $nama");
    var sayJob = 'Halo $peran $nama';
    if(peran == "Penyihir"){
      print("$sayJob, kamu dapat melihat siapa yang menjadi werewolf!");
    } else if(peran == "Guard"){
      print("$sayJob, kamu akan membantu melindungi temanmu dari serangan werewolf.");
    } else {
      print("$sayJob, Kamu akan memakan mangsa setiap malam!");
    }
  }

  // No 3. Switch case
  title("Soal No 3: Switch case");
  print("masukkan nama hari : ");
  String? hari = stdin.readLineSync()!;
  String capHari = hari.toUpperCase();

  switch (capHari) {
    case "SENIN":
      print("Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.");
      break;
    case "SELASA":
      print("Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.");
      break;
    case "RABU":
      print("Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.");
      break;
    case "KAMIS":
      print("Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.");
      break;
    case "JUMAT":
      print("Hidup tak selamanya tentang pacar.");
      break;
    case "SABTU":
      print("Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.");
      break;
    case "MINGGU":
      print("Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.");
      break;
    default:
      print("Istirahatlah, sepertinya anda kelelahan sampe typo nama hari");
  }

  // No 4. Switch case
  title("Soal No 4: Switch case");
  print("masukkan nama hari : ");

  var tanggal = 21, bulan = 1, tahun = 1945;

  // validasi tgl
  if(! (tanggal > 0 && tanggal <= 31)){
    print("tanggal yg di tetapkan harus berada di range 1-31");
  } else if(! (tahun >= 1900 && tahun <= 2200)){
    print("bulan yg di tetapkan harus berada di range 1-12");
  } else {
    switch (bulan) {
      case 1:
        print("$tanggal Januari $tahun");
        break;
      case 2:
        print("$tanggal Februari $tahun");
        break;
      case 3:
        print("$tanggal Maret $tahun");
        break;
      case 4:
        print("$tanggal April $tahun");
        break;
      case 5:
        print("$tanggal Mei $tahun");
        break;
      case 6:
        print("$tanggal Juni $tahun");
        break;
      case 7:
        print("$tanggal Juli $tahun");
        break;
      case 8:
        print("$tanggal Agustus $tahun");
        break;
      case 9:
        print("$tanggal September $tahun");
        break;
      case 10:
        print("$tanggal Oktober $tahun");
        break;
      case 11:
        print("$tanggal November $tahun");
        break;
      case 12:
        print("$tanggal Desember $tahun");
        break;
      default:
        print("bulan yg di tetapkan harus berada di range 1-12");
    }
  }

}