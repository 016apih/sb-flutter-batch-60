
void main(){
  print("Life");
  Future.delayed(Duration(seconds: 1)).then((value) => print("never flat"));
  print("is");
}