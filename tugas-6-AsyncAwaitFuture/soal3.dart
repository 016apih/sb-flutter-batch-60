Future<void> line() async{
    await Future.delayed(Duration(seconds: 5));
  print("pernahkan kau merasa ......");
}
Future<void> line2() async{
  await Future.delayed(Duration(seconds: 8));
  print("pernahkan kau merasa ............");
}

Future<void> line3() async{
  await Future.delayed(Duration(seconds: 10));
  print("pernahkan kau merasa");
}

Future<void> line4() async{
  await Future.delayed(Duration(seconds: 11));
  print("Hatimu hampa, pernahkah kau merasa, hati mu kosong");
}

void main(){
  print("Ready. sing");
  line();
  line2();
  line3();
  line4();
}