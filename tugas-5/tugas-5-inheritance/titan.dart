class Titan {
  late double _powerPoint;

  void setPowerPoint(double val){
    _powerPoint = val;
  }

  double getPowerPoint(){
    return _powerPoint < 5 ? 5 : _powerPoint;
  }
}