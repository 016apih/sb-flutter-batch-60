import 'titan.dart';

class Human extends Titan {
  String killAlltitan(){
    return " Sasageyo ... Shinzo Sasageyo...";
  }

  void tampilkanInfo(){
    print("class: Human");
    print("power: ${getPowerPoint()}");
    print("lempar: ${killAlltitan()}");
  }
}