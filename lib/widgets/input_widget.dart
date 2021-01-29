import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class InputWidget extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  InputWidget({this.hintText, this.prefixIcon});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(53.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8.0)),
      padding:
          EdgeInsets.only(right: 16.0, left: prefixIcon == null ? 16.0 : 0.0),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: prefixIcon == null
              ? null
              : Icon(
                  this.prefixIcon,
                  color: Color.fromRGBO(105, 108, 121, 1),
                ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14.0,
            color: Color.fromRGBO(105, 108, 121, 1),
          ),
        ),
      ),
    );
  }
}
