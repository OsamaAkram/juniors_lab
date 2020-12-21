import 'package:flutter/material.dart';
import 'package:ismart_apps/shared/colors/colors.common.dart';

Widget defaultButton ({
  Color background = defaultColor,
  double radius = 5.0,
  @required Function function,
  @required String text,

}) => Container(
  width: double.infinity ,
  height: 40.0,
  decoration: BoxDecoration(
      color: background,
      borderRadius: BorderRadius.circular(
          radius)
  ),
  child: FlatButton(
    onPressed: function,
    child: Text(
      text.toString().toUpperCase(),
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
);
Widget defaultTextForm({
  String title,
  String hint = '',
  @required TextEditingController controller,
  @required TextInputType type,
}) => Container(
  width: double.infinity,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(
      5.0,
    ),
    color: Colors.white,
  ),
  padding: EdgeInsetsDirectional.only(
    start: 10.0,
    end: 10.0,
    top: 10.0,
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      if(title != null)
      detailsText(title),
      TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
        ),
        keyboardType: type,
      ),
    ],
  ),
);
Widget headText(String text)=> Text(
  text,
  style: TextStyle(
    fontSize: 25.0,
  ),
);
Widget captionText(String text)=> Text(
  text,
  style: TextStyle(
    fontSize: 16.0,
  ),
);
Widget detailsText(String text)=> Text(
  text,
  style: TextStyle(
    fontSize: 14.0,
  ),
);
void navigateTo(context, widget) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
);