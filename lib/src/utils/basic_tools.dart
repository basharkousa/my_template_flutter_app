import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_template_flutter_app/src/configs/colors.dart';

class BasicTools {
  BasicTools._();

  //  https://stackoverflow.com/questions/41557139/how-do-i-bold-or-format-a-piece-of-text-within-a-paragraph
  static List<TextSpan> highlightOccurrences(String source, String query) {
    if (query == null ||
        query.isEmpty ||
        !source.toLowerCase().contains(query.toLowerCase())) {
      return [TextSpan(text: source)];
    }
    final matches = query.toLowerCase().allMatches(source.toLowerCase());

    int lastMatchEnd = 0;

    final List<TextSpan> children = [];
    for (var i = 0; i < matches.length; i++) {
      final match = matches.elementAt(i);

      if (match.start != lastMatchEnd) {
        children.add(TextSpan(
          text: source.substring(lastMatchEnd, match.start),
        ));
      }

      children.add(TextSpan(
        text: source.substring(match.start, match.end),
        style: TextStyle(fontWeight: FontWeight.w800, color: Colors.black),
      ));

      if (i == matches.length - 1 && match.end != source.length) {
        children.add(TextSpan(
          text: source.substring(match.end, source.length),
        ));
      }

      lastMatchEnd = match.end;
    }
    return children;
  }

  static hideKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  static void showToastMessage(String msg,{ToastGravity gravity}){
    Fluttertoast.showToast(
      msg: msg ?? "This is Toast Message",
      toastLength: Toast.LENGTH_LONG,
      gravity: gravity ?? ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: AppColors.accentColor,
      textColor: Colors.black,
      fontSize: 16.0,
    );
  }

  // static void playTakingPicSound() async{
  //   if(Platform.isAndroid){
  //     final player = AudioPlayer();
  //     // var duration = await player.setUrl('https://foo.com/bar.mp3');
  //     // var duration = await player.setFilePath('/path/to/file.mp3');
  //     var duration = await player.setAsset(Assets.sound_shutter);
  //     player.play();
  //   }
  // }

  // static String getAppString(BuildContext context, String str) {
  //   return AppLocalizations.of(context).translate(str);
  // }

  // static getCountryFlagIcon(int i) {
  //   switch(i){
  //     case 4 :
  //       return WebsafeSvg.asset(
  //         Assets.ic_flag_lebanon,width: 38,height: 26,);
  //       break;
  //     case 2 :
  //       return WebsafeSvg.asset(
  //         Assets.ic_flag_emirates,width: 38,height: 26,);
  //       break;
  //     case 3 :
  //       return WebsafeSvg.asset(
  //         Assets.ic_flag_mexico,width: 38,height: 26,);
  //       break;
  //
  //   }
  //   return WebsafeSvg.asset(
  //     Assets.ic_flag_lebanon,width: 38,height: 26,);
  // }
}
