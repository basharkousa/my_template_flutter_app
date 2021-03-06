import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final String loadingMessage;

  const LoadingWidget({Key key, this.loadingMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            loadingMessage??" Loading ..",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black45,
              fontSize: 12,
            ),
          ),
          SizedBox(height: 24),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
          ),
        ],
      ),
    );
  }
}
