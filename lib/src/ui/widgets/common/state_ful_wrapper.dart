import 'package:flutter/material.dart';

/// Wrapper for stateful functionality to provide onInit calls in stateles widget
class StatefulWrapper extends StatefulWidget {
  final Function onInit;
  final Widget child;
  const StatefulWrapper({@required this.onInit, @required this.child});
  @override
  _StatefulWrapperState createState() => _StatefulWrapperState(onInit);
}
class _StatefulWrapperState extends State<StatefulWrapper> {

   Function onInit;

   _StatefulWrapperState(this.onInit);

  @override
  void initState() {
    print("init1");
    if(this.onInit != null) {
      this.onInit();
      print("init2");
    }
    super.initState();
    print("init1");

  }
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}