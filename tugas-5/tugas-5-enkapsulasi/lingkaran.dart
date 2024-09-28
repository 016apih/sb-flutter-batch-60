import 'dart:math';

class Lingkaran {
  late double _ruas;

  Lingkaran(this._ruas);
  
  set ruas(double val){
    _ruas = val > 0 ? val : val * -1 ;
  }

  void setRuas(double val){
    print(val);
    _ruas = val > 0 ? val : val * -1 ;
  }

  double getRuas(){
    return _ruas = _ruas > 0 ? _ruas : _ruas * -1;
  }

  double hitungLuas(){
    return pi * _ruas * _ruas;
  }
}