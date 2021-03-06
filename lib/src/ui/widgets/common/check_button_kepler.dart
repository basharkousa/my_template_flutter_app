import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildCheckButtons extends StatefulWidget {


  final String title;
  final Function(bool)onChanged;


  BuildCheckButtons({this.title, this.onChanged});

  @override
  _BuildCheckButtonsState createState() => _BuildCheckButtonsState(title,onChanged);


}

class _BuildCheckButtonsState extends State<BuildCheckButtons> {

  String title;
  Function(bool)onChanged;
  bool checkValue = false;


  _BuildCheckButtonsState(this.title, this.onChanged);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          checkValue = !checkValue;
          print("$checkValue");
        });
      },
      child: Padding(
        padding: EdgeInsetsDirectional.only(top: 12),
        child: Row(
          children: <Widget>[
            Container(
                margin: EdgeInsetsDirectional.only(end: 12),
                child:checkValue? SvgPicture.asset("assets/icons/svg/ic_checkbox.svg"):SvgPicture.asset("assets/icons/svg/ic_blankCheck.svg"
                )),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                  color: Color(0xff000000),
                ),
              ),
            )
          ],
        ),
      ),
    );;
  }
}

