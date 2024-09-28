void title(String str){
  print("");
  print("=== $str ===");
}

class Segitiga {
  double setengah = 0.5;
  double alas;
  double tinggi;

  Segitiga(this.alas, this.tinggi);

  double cariLuas (){
    return setengah * alas * tinggi;
  }
}

void main(){
  title("Soal 1 (Mengubah Prosedural ke Class)");
  Segitiga segitiga = Segitiga(20.0, 30.0);
  print(segitiga.cariLuas());
}