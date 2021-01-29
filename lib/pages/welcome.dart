import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'authintecations.dart';


class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      alignment: Alignment(0, -0.9),
                      image: AssetImage(
                        "assets/images/welcome.png",
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding:
                  EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 25.0,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Discover\n",
                              style: TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                                color: Color.fromRGBO(38, 42, 46, 1),
                              ),
                            ),
                            TextSpan(
                              text: "the best property.",
                              style: TextStyle(
                                fontSize: 28.0,
                                height: 1.3,
                                color: Color.fromRGBO(38, 42, 46, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Find the best property you want by your location or neighbourhood",
                        style: TextStyle(
                          height: 1.70,
                          color: Color.fromRGBO(110, 121, 136, 1),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      InkWell(
                        onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>Authintecation()));},
                        child: Container(
                          width: double.infinity,
                          height: ScreenUtil().setHeight(50.0),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(47, 105, 248, 0.1),
                            borderRadius: BorderRadius.circular(8.0),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(169, 176, 185, 0.42),
                                spreadRadius: 0,
                                blurRadius: 8,
                                offset: Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              "Get Started",
                              style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
