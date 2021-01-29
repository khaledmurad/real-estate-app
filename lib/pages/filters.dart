

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_state/models/og_time_item.dart';
import 'package:real_state/pages/search_result.dart';
import 'package:real_state/widgets/bottun_grop_space.dart';
import 'package:real_state/widgets/input_widget.dart';
import 'package:real_state/widgets/og_tab.dart';

class Filters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filters"),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              child: Text("Reset"),
            ),
          ),
          SizedBox(
            width: 10.0,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: OgTab(
                  items: [
                    OgTabItem(
                      title: "Sale",
                    ),
                    OgTabItem(
                      title: "Rent",
                    ),
                    OgTabItem(
                      title: "Sold",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Property Area",
                      style: TextStyle(
                        color: Color.fromRGBO(38, 42, 46, 1),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InputWidget(
                      hintText: "Find more properties in nearby area",
                      prefixIcon: null,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Property Type",
                      style: TextStyle(
                        color: Color.fromRGBO(38, 42, 46, 1),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ButtonGroupSpaced(
                      items: [
                        "Any",
                        "House",
                        "Apartment",
                        "Office",
                        "Commercial",
                        "Swimming Pool",
                        "Gardens"
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "Bedrooms",
                      style: TextStyle(
                        color: Color.fromRGBO(38, 42, 46, 1),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    OgTab(
                      items: [
                        OgTabItem(
                          title: "Any",
                        ),
                        OgTabItem(
                          title: "1",
                        ),
                        OgTabItem(
                          title: "2",
                        ),
                        OgTabItem(
                          title: "3",
                        ),
                        OgTabItem(
                          title: "4+",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "Bathrooms",
                      style: TextStyle(
                        color: Color.fromRGBO(38, 42, 46, 1),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    OgTab(
                      items: [
                        OgTabItem(
                          title: "Any",
                        ),
                        OgTabItem(
                          title: "1",
                        ),
                        OgTabItem(
                          title: "2",
                        ),
                        OgTabItem(
                          title: "3",
                        ),
                        OgTabItem(
                          title: "4+",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    InkWell(
                      onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>SearchResult())),
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
                            "Apply filter",
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
              )
            ],
          ),
        ),
      ),
    );
  }
}