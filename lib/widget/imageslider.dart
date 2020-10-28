import 'package:flutter/material.dart';
import 'package:flutter_app/models/car.dart';

class imageslider extends StatelessWidget {
  String title;

  imageslider(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 250,
          child: Card(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 9.0,left: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "$title",
                                style: TextStyle(fontSize: 14.0),
                              ),
                              Text(
                                "الكل",
                                style: TextStyle(fontSize: 14.0),
                              ),
                            ],
                          )
                      )),
                  Expanded(
                    child: ListView.builder(
                        padding: EdgeInsets.only(
                            top: 8.0, left: 15.0, right: 15.0),
                        scrollDirection: Axis.horizontal,
                        itemCount: branddata.length,
                        itemBuilder: (ctx, i) {
                          return Container(
                            width: 298,
                            height: 250,
                            margin: EdgeInsets.only(bottom: 15,left: 10),
                            decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black)
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Material(
                                child: InkWell(
                                  highlightColor: Colors.white.withAlpha(50),
                                  onTap: () {},
                                  child:  Column(

                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        height: 150,
                                        width: MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Image.asset("assets/images/car.jpg",fit: BoxFit.cover,),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(right: 8.0,bottom: 8.0),
                                        child:new Directionality(
                                          textDirection: TextDirection.rtl,
                                          child: Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,

                                                children: <Widget>[

                                                  Row(

                                                    children: [
                                                      Text(
                                                        "Audi A8",
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                      SizedBox(width: 80,),
                                                      Text(
                                                        "تبدأ من12900 ك د ",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),

                                        ),

                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}