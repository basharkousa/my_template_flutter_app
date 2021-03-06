import 'package:flutter/material.dart';

class ErrorsWidget extends StatelessWidget {
  final String errorMessage;

  final Function onRetryPressed;

  const ErrorsWidget({Key key, this.errorMessage, this.onRetryPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Text(
          //   errorMessage??" Some Error !!",
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //     color: Colors.black54,
          //     fontSize: 18,
          //   ),
          // ),
          SizedBox(height: 8),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.refresh),
            ),
            onTap: onRetryPressed,
          )
        ],
      ),
    );
  }
}
