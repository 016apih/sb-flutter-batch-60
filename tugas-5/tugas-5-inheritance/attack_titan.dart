import 'titan.dart';

class AttackTitan extends Titan {
  String punch(){
    return "blam.. blam..";
  }

  void tampilkanInfo(){
    print("class: Attack Titan");
    print("power: ${getPowerPoint()}");
    print("punch: ${punch()}");
  }
}