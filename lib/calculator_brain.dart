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
      return 'Overweight ☹️';
    }
    else if(_bmi >= 18 && _bmi<=24.9){
      return 'Normal  😃 ';
    }
    else if(_bmi<=18){
      return 'Underweight ☹️';
    }
  }
  String getInterpretation(){
    if (_bmi >= 25){
      return 'You need to exercise more  🏋🏼‍♀ & don\'t forget to drink 8 glasses of water everyday 🥛 ' ;
    }
    else if(_bmi >= 18 && _bmi<=24.9){
      return 'Wow, you\'re good to go ✌️';
    }
    else if(_bmi<=18){
      return 'It\’s very important to eat mostly healthy foods and don\'t forget to drink plenty of water  🍱  🥛  ';
    }

  }
}