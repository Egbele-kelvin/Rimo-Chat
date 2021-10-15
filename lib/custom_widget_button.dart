import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
    @required this.btnTitle,
    @required this.btnColor,
    @required this.onClick,
  }) : super(key: key);

  final String btnTitle;
  final Color btnColor;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: btnColor, //Colors.lightBlueAccent
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onClick, //Navigator.pushNamed(context, LoginScreen.id);
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            btnTitle,
            style: TextStyle(color: Colors.white), //'Log in'
          ),
        ),
      ),
    );
  }
}
