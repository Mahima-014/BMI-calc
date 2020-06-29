import 'package:flutter/material.dart';
import 'constants.dart';
class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap,@required
  this.buttonTittle});
  final Function onTap;
  final String buttonTittle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Color(0xFFEB1555),
        child: Center(
          child: Text(
            buttonTittle,
            style: kLargeButtonTextStyle,
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 60.0,
      ),
    );
  }
}
