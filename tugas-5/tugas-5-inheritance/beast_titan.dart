import 'titan.dart';

class BeastTitan extends Titan {
  String lempar (){
    return "wush wush..";
  }

  void tampilkanInfo(){
    print("class: Beast Titan");
    print("power: ${getPowerPoint()}");
    print("lempar: ${lempar()}");
  }
}