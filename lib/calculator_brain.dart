import 'dart:math';

class CalculatorsBrain{
  CalculatorsBrain({this.height, this.weight});
  final height;
  final weight;
  double _bmi;
  String getResult(){
    _bmi=weight/pow((height/100),2);
    return _bmi.toStringAsFixed(1);
  }
  String getReviews(){
    if (_bmi >= 25){
      return 'Overweight';
    }
    else if(_bmi <= 18){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }
  String getInterpretation(){
    if(_bmi>=25){
      return 'Do some exercise. And drink plenty of water everyday';
    }
    else if(_bmi<=18){
      return 'Good job keep it up and do not forget to drink water';
    }
    else{
      return 'Eat healty eat some vegies and drink enough water';
    }
  }
}