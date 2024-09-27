void main(){
  title("1. Range");  
  print(range(10, 1));
  print(range(1, 10));
}

void title(String str){
  print("");
  print("=== $str ===");
}

List<int> range(int num1, int num2){
  List<int> listNum = [];
  if(num1 > num2){
    for(var i=num1; i >=num2; i--){
      // print(i);
      listNum.add(i);
    }
    return listNum;
  }

  for(var i=num1; i <= num2; i++){
    listNum.add(i);
  }
  return listNum;
}
