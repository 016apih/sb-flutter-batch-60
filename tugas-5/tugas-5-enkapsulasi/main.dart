import 'lingkaran.dart';

void title(String str){
  print("");
  print("=== $str ===");
}

void main(){
  title("Soal 2 Enkapsulasi(Pembungkusan)");
  Lingkaran lingkaran = Lingkaran(-7);
  print("get ruas ${lingkaran.getRuas()}");
  print("get luas lingkaran ${lingkaran.hitungLuas()}");
}