import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main(){
  ArmorTitan armorTitan = ArmorTitan();
  armorTitan.setPowerPoint(8);
  armorTitan.tampilkanInfo();
  print("");

  AttackTitan attackTitan = AttackTitan();
  attackTitan.setPowerPoint(2);
  attackTitan.tampilkanInfo();
  print("");

  BeastTitan beastTitan = BeastTitan();
  beastTitan.setPowerPoint(3);
  beastTitan.tampilkanInfo();
  print("");

  Human human = Human();
  human.setPowerPoint(4);
  human.tampilkanInfo();
}