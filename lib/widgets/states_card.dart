import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/models/real_state.dart';


class StatesCard extends StatelessWidget {
  final realState State;
  StatesCard({this.State});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(250.0),
      child: Column(
        children: [
          Expanded(child: Stack(
            overflow: Overflow.visible,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      State.imagePath,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10.0,
                right: 10.0,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 45.0,
                    height: 45.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      FlutterIcons.favorite_mdi,
                      color: State.liked
                          ? Color.fromRGBO(255, 136, 0, 1)
                          : Color(0xFFC4C4C4),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -15.0,
                left: 10.0,
                child: Container(
                  width: 45.0,
                  height: 45.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: State.propertyTypes == Real_State.AGENCY
                        ? Colors.blue
                        : Color.fromRGBO(255, 136, 0, 1),
                  ),
                  child: Center(
                    child: Text(
                      State.propertyTypes == Real_State.AGENCY
                          ? "Agency"
                          : "Private",
                      style: TextStyle(
                        fontSize: 8.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        State.name,
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                    Text(
                      State.price,
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.green,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  State.description,
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color(0xFF343434),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Icon(
                      FlutterIcons.map_pin_fea,
                      size: 15.0,
                      color: Color.fromRGBO(255, 136, 0, 1),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      State.address,
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Color(0xFF343434),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
