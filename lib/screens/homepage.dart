
import 'package:flutter/material.dart';
import 'package:flutter_app/models/car.dart';
import 'package:flutter_app/widget/badge.dart';
import 'package:flutter_app/widget/imageslider.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  Widget _header(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
        height: 260,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/car.jpg"), fit: BoxFit.fill),
        ),
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
                top: 40,
                child: Container(
                    width: width,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        GestureDetector(
                          child: Icon(
                            Icons.sort_outlined,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        SizedBox(height: 40),
                      ],
                    ))),
            Positioned(
                top: 40,
                left: 0,
                child: Container(
                    width: width,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        GestureDetector(
                            child: IconBadge(
                          icon: Icons.notifications,
                          size: 35,
                        )),
                        SizedBox(height: 40)
                      ],
                    ))),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff4a52c1),
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon:Image.asset("assets/images/bottom4.jpg",),
            title: new Text(
              'التأمين',
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            icon:Image.asset("assets/images/bottom3.jpg",),
            title: new Text(
              'التثمين',
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            icon:Image.asset("assets/images/bottom2.jpg",),
            title: new Text(
              'الخدمات',
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
              icon:Image.asset("assets/images/bottom1.jpg",),
              title: Text(
                'الوكالات',
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
      backgroundColor: Color(0xfff0f0f0),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
              child: Column(
                children: [
                  _header(context),
                  SizedBox(
                    height: 8.0,
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: 120,
                        child: Card(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 8.0),
                                      child: Text(
                                        "تصفح حسب نوع السيارة",
                                        style: TextStyle(fontSize: 14.0),
                                      ),
                                    )),
                                Expanded(
                                  child: ListView.builder(
                                      padding: EdgeInsets.only(
                                          top: 8.0, left: 15.0, right: 15.0),
                                      scrollDirection: Axis.horizontal,
                                      itemCount: Carsdata.length,
                                      itemBuilder: (ctx, i) {
                                        return Padding(
                                          padding: EdgeInsets.only(left: 15.0),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                  "${Carsdata[i].carimge}"),
                                              SizedBox(
                                                height: 10.0,
                                              ),
                                              Text("${Carsdata[i].carname}")
                                            ],
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
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: 120,
                        child: Card(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 8.0),
                                      child: Text(
                                        "تصفح حسب الماركة",
                                        style: TextStyle(fontSize: 14.0),
                                      ),
                                    )),
                                Expanded(
                                  child: ListView.builder(
                                      padding: EdgeInsets.only(
                                          top: 8.0, left: 15.0, right: 15.0),
                                      scrollDirection: Axis.horizontal,
                                      itemCount: branddata.length,
                                      itemBuilder: (ctx, i) {
                                        return Padding(
                                          padding: EdgeInsets.only(
                                              left: 15.0, bottom: 10.0),
                                          child: Container(
                                            width: 80,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey),
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(15),
                                                  bottomRight:
                                                      Radius.circular(15),
                                                  bottomLeft:
                                                      Radius.circular(15),
                                                  topRight:
                                                      Radius.circular(15)),
                                            ),
                                            child: Image.asset(
                                                "${branddata[i].carimge}"),
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
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  imageslider("جديد الوكالات"),
                  SizedBox(
                    height: 2.0,
                  ),
                  imageslider("فيديو"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
