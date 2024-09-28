import 'titan.dart';

class ArmorTitan extends Titan {
  String terjang (){
    return "dush.. dush..";
  }

  void tampilkanInfo(){
    print("class: Amor Titan");
    print("power: ${getPowerPoint()}");
    print("terjang: ${terjang()}");
  }
}