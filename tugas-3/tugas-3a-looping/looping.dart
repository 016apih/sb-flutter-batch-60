
void title(String str){
  print("");
  print("=== $str ===");
}

void main(){
  // No. 1 Looping While  
  title("Soal No. 1 Looping While ");
  print("LOOPING PERTAMA");
  var min = 1, max = 20;
  while(min <= max) { 
    if(min % 2 == 0) 
      print("$min - I love coding"); 
    min++;
  }

  print("LOOPING KEDUA");
  while(max > 0) { 
    if(max % 2 == 0)
      print('$max - I will become a mobile developer'); 
    max--;
  }

  // No. 2 Looping menggunakan for  
  title("Soal No. 2 Looping menggunakan for ");
  for(var i=1; i<=20; i++){
    if(i % 2 == 0){
      print("$i - Berkualitas");
    } else {
      i % 3 == 0 ? print("$i -  I Love Coding.") : print("$i - Santai");
    }
  }

  // No. 3 Membuat Persegi Panjang # 
  title("Soal No. 3 Membuat Persegi Panjang #");
  for (var j=0; j<4;j++){
    var str="";
    for(var i=0; i<8; i++){
      str += "#";
    }
    print(str);
  }

  // No. 4 Membuat Tangga 
  title("Soal No. 4 Membuat Tangga");
  var txt = "";
  for (var j=7; j>0;j--){
    txt += "#";
    print(txt);
  }
}