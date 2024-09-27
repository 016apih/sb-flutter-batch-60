void main(List<String> args) {
  dataHandling(input);
}

var input = [
  ['0001', 'Roman Alamsyah', 'Bandar Lampung', '21/05/1989', 'Membaca'],
  ['0002', 'Dika Sembiring', 'Medan', '10/10/1992', 'Bermain Gitar'],
  ['0003', 'Winona', 'Ambon', '25/12/1965', 'Memasak'],
  ['0004', 'Bintang Senjaya', 'Martapura', '6/04/1970', 'Berkebun']
];

void printdata(id, dd){
  var label = ['Nomor Id', 'Nama Lengkap', 'T', 'TL', 'Hobby'];
  
  print('${label[id]} : $dd');
  if(id == 4) print("");
}

dataHandling(data) {
  data.forEach((d) => {
    // int index = 0;
    d.asMap().forEach((id, dd) => {
      printdata(id, dd)
    })
  });
}
