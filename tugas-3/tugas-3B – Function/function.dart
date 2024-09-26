void title(String str){
  print("");
  print("=== $str ===");
}

void main(){
  // No. 1  
  title("Soal No. 1 ");
  String teriak(){
    return "Halo Sanbers!";
  }
  print(teriak());

  // No. 2  
  title("Soal No. 2 ");
  int kalikan(int num1, int num2){
    return num1 * num2;
  }
  var num1 = 12, num2 = 4;
  var hasilKali = kalikan(num1, num2);
  print(hasilKali);

  // No. 3  
  title("Soal No. 3 ");
  String introduce(String name, int age, String address, String hobby){
    return 'Nama saya $name, umur saya $age tahun, alamat saya di "$address, dan saya punya hobby yaitu $hobby!';
  }
  var name = "Agus";
  var age = 30;
  var address = "Jln. Malioboro, Yogyakarta";
  var hobby = "Gaming";

  var perkenalan = introduce(name, age, address, hobby);
  print(perkenalan);

  // No. 4  
  title("Soal No. 4 ");
  int getFactorial(int angka){
    int result = 1;
    print('$angka $result');
    for(var i=1; i<=angka; i++){
      result *= i;
    }
    return result;
  }
  print(getFactorial(6));
}