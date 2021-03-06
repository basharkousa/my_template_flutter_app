import 'package:flutter/material.dart';

extension OnPressed on Widget {
  Widget  ripple(Function onPressed, {BorderRadiusGeometry borderRadius =const BorderRadius.all(Radius.circular(5))}) => Stack(
      children: <Widget>[
        this,
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius
            ),
              onPressed: () {
                if (onPressed != null) {
                  onPressed();
                }
              },
              child: Container()),
        )
      ],
    );
}
// Add this line at end of any widget to handle click and show ripple effect.
//.ripple(() {}, borderRadius: BorderRadius.all(Radius.circular(8)))