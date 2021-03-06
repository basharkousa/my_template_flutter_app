import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:my_template_flutter_app/src/configs/strings.dart';
import 'package:websafe_svg/websafe_svg.dart';

class AppBarSearch extends StatefulWidget implements PreferredSizeWidget {
  final bool automaticallyImplyLeading;
  final Function(String) onReturnQuerySearch;
  final Function(String) onButtonSearchClicked;
  final String query;

  AppBarSearch(
      {this.automaticallyImplyLeading,
      @required this.onReturnQuerySearch,
      this.onButtonSearchClicked,this.query});

  @override
  _AppBarSearchState createState() =>
      _AppBarSearchState(onReturnQuerySearch, onButtonSearchClicked,query);

  @override
  Size get preferredSize => new Size.fromHeight(AppBar().preferredSize.height);
}

class _AppBarSearchState extends State<AppBarSearch> {
  TextEditingController _textFieldController = TextEditingController();

  String currentQuery;
  Function(String) onReturnQuerySearch;
  Function(String) onButtonSearchClicked;

  _AppBarSearchState(this.onReturnQuerySearch, this.onButtonSearchClicked,this.currentQuery);

  _onClear() {
    setState(() {
      _textFieldController.text = "";
    });
  }

  @override
  void initState() {
    _textFieldController.text = currentQuery??"";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: <Widget>[
          InkWell(
            child: SizedBox(
              child: Icon(
                Icons.keyboard_backspace,
                color: Colors.black,
              ),
            ),
            onTap: () => {Navigator.pop(context)},
          ),
          Expanded(
            child: Theme(
              data: ThemeData(
                  accentColor: Colors.black, primaryColor: Colors.black),
              child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 10, end: 0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.00,
                      color: Color(0xff333333),
                    ),
                    borderRadius: BorderRadius.circular(8.00),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 8.0),
                    child: TextField(
                      controller: this._textFieldController,
                      maxLines: 1,
                      onSubmitted: (string){
                        print("onSubmitted");
                        onButtonSearchClicked(string);
                      },
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        suffixIcon: _textFieldController.text != ""
                            ? IconButton(
                                icon: SvgPicture.asset(
                                    "assets/icons/svg/ic_clear_textfield.svg"),
                                onPressed: () {
                                  _onClear();
                                  onReturnQuerySearch("");
                                })
                            : null,
                        //counterText: '${this._controller.text.split(' ').length} words',
                        //labelText: 'Enter multiline text:',
                        hintText: "Strings.Search_for_furniture.tr",
                        border: InputBorder.none,
//              hoverColor: Colors.red,
//              focusColor: Colors.red,
//              fillColor: Colors.red
                      ),
                      onChanged: (text) => setState(() {
                        setState(() {
                          currentQuery = text;
                          onReturnQuerySearch(text);
                        });
                      }),
                    ),
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              if (this._textFieldController.text == "") {
//                BasicTools.showToastMessage(Strings.please_enter_what_want_search.tr);
              } else {
                onButtonSearchClicked(this._textFieldController.text);
//                setState(() {
//                  this._textFieldController.text = "";
//                });
              }
            },
            icon: WebsafeSvg.asset("Assets.ic_search"),
          ),
        ],
      ),
      automaticallyImplyLeading: widget.automaticallyImplyLeading ?? false,
    );
  }
}
