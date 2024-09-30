class Human {
  String name = "Nama Character One Piace";

  Future<void> getName() async {
    await Future.delayed(Duration(seconds: 3));
    name = "Rafi";
    print("get data[done]");
  }
}

void main() async {
  var h = Human();
  print("Luffy");
  print("Zorro");
  print("Killer");
  print(h.name);
  await h.getName();
  print(h.name);
}