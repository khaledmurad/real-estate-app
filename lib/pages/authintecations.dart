import 'package:flutter/material.dart';
import 'package:real_state/widgets/auth_tab.dart';
import 'package:real_state/widgets/loginpage.dart';
import 'package:real_state/widgets/rigesterpage.dart';


class Authintecation extends StatefulWidget {
  @override
  _AuthintecationState createState() => _AuthintecationState();
}

class _AuthintecationState extends State<Authintecation> {
  String active = "login";

  void setActive(String val) {
    setState(() {
      active = val;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  ClipRect(
                    child: Transform.scale(
                      scale: 1.5,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/pattern.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    child: Container(
                      constraints: BoxConstraints(minWidth: 200.0),
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.18,
                      child: Text(
                        "Welcome back",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      color: Color.fromRGBO(17, 82, 253, 1),
                    ),
                  )
                ],
              ),
              AuthTab(
                Active: active,
                setActive: setActive,
              ),
              SizedBox(
                height: 40.0,
              ),
              AnimatedCrossFade(
                firstChild: LoginForm(),
                secondChild: ResgiterPage(),
                crossFadeState: active == "register"
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                duration: Duration(milliseconds: 300),
              ),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "Terms & Conditions",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
