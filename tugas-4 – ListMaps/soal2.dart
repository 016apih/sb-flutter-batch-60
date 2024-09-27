void title(String str){
  print("");
  print("=== $str ===");
}

List<int> rangeWithStep (int num1, int num2, int step){
  List<int> listNum = [];
  if(num1 > num2){
    for(var i=num1; i >=num2; i--){
      if(i % step == 0) listNum.add(i);
    }
    return listNum;
  }

  for(var i=num1; i <= num2; i++){
    if(i % step == 0) listNum.add(i);
  }
  return listNum;
}

void main(){
  title("2. Range With Step");
  print(rangeWithStep(30, 23, 3));
}