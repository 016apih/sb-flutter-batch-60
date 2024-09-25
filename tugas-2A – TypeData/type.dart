import 'dart:io';

String capitalize(String str){
  return str[0].toUpperCase() + str.substring(1);
}

void title(String str){
  print("");
  print("=== $str ===");
}

void main(){
  // No 1 : Buatlah agar kata-kata di atas menjadi satu kalimat . Output: Dart is awesome and I love it!
  title("Soal No 1");
  var word = 'dart';
  var second = 'is';
  var third = 'awesome';
  var fourth = 'and';
  var fifth = 'I';
  var sixth = 'love';
  var seventh = 'it!';

  print('${capitalize(word)} $second $third $fourth $fifth ${capitalize(sixth)} $seventh');

  // No 2 : Mengurai kalimat (Akses karakter dalam string),
  title("Soal No 2");
  var sentence = "I am going to be Flutter Developer";

  var firstWord = sentence[0];
  var secondWord = sentence[2]+sentence[3];
  var thirdWord = sentence[5]+sentence[6]+sentence[7]+sentence[8]+sentence[9];
  var fourthWord = sentence[11]+sentence[12];
  var fifthWord = sentence[14]+sentence[15];
  var sixthWord = sentence[17]+sentence[18]+sentence[19]+sentence[20]+sentence[21]+sentence[22]+sentence[23];
  var seventhWord = sentence[25]+sentence[26]+sentence[27]+sentence[28]+sentence[29]+sentence[30]+sentence[31]+sentence[32]+sentence[33];

  print('First Word: ' + firstWord);
  print('Second Word: ' + secondWord);
  print('Third Word: ' + thirdWord);
  print('Fourth Word: ' + fourthWord);
  print('Fifth Word: ' + fifthWord);
  print('Sixth Word: ' + sixthWord);
  print('Seventh Word: ' + seventhWord);

  // No 3. buatlah input dinamis
  title("Soal No 3");

  print("masukan nama depan: ");
  String? nama_depan = stdin.readLineSync()!;
  
  print("masukan nama belakang: ");
  String? nama_belakang = stdin.readLineSync()!;
  
  print("nama lengkap anda adalah:");
  print("${nama_depan} ${nama_belakang}");

  // No 4. bentuk operasi perkalian, penjumlahan, pengurangan dan pembagian
  title("Soal No 4");
  int a = 5,  b = 10;
  print("perkalian : ${a*b}");
  print("pembagian : ${a/b}");
  print("penambahan : ${a+b}");
  print("pengurangan : ${a-b}");

}




