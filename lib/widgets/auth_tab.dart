import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';


class AuthTab extends StatelessWidget{

  final Function setActive;
  final String Active;
  AuthTab({this.Active , this.setActive});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(55.0),
      child: Row(
        children: [
          getTabItem("SIGN UP", Active == "register", "register", setActive),
          getTabItem("LOGIN", Active == "Login", "Login", setActive),
        ],
      ),
    );
  }

}


Widget getTabItem(String title , bool isActive , String key , Function setActive){
  return Expanded(
    child: GestureDetector(
      onTap: () {
        setActive(key);
      },
      child: Container(
        alignment: Alignment.center,
        height: ScreenUtil().setHeight(52.0),
        decoration: BoxDecoration(
          color:
          isActive ? Color.fromRGBO(47, 105, 248, 0.1) : Colors.transparent,
          border: isActive
              ? Border(
            bottom: BorderSide(
              color: Color.fromRGBO(17, 82, 253, 1),
              width: 3.0,
            ),
          )
              : null,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isActive
                ? Color.fromRGBO(38, 42, 46, 1)
                : Color.fromRGBO(172, 174, 181, 1),
          ),
        ),
      ),
    ),
  );
}