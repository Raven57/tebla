import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'detail.dart';

class HomePage extends StatelessWidget {
  var imgs = [
    'assets/model-3.jpg',
    'assets/model-s.jpg',
    'assets/model-x.jpg',
    'assets/model-y.png',
  ];

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
        appBar: AppBar(
            title: Text('TEBLA Home Page'),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 33, 33, 33)),
        body: Column(
          children: [
            Container(
                padding: EdgeInsets.all(20),
                child: CarouselSlider(
                  items: [
                    Image(image: AssetImage(imgs[0])),
                    Image(image: AssetImage(imgs[1])),
                    Image(image: AssetImage(imgs[2])),
                    Image(image: AssetImage(imgs[3])),
                  ],
                  options: CarouselOptions(
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      scrollDirection: Axis.horizontal),
                )),
            Container(
              // padding: EdgeInsets.all(20),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Card(
                    child: ListTile(
                        leading: ConstrainedBox(
                            constraints: BoxConstraints(
                                minWidth: 50,
                                minHeight: 50,
                                maxHeight: 65,
                                maxWidth: 75),
                            child: Image.asset(
                              'assets/bgv3.jpg',
                              fit: BoxFit.cover,
                            )),
                        title: Text('See outerior'),
                        trailing: RaisedButton(
                            child: Text('Details'),
                            onPressed: () {
                              Navigator.push(ctx,
                                  MaterialPageRoute(builder: (builder) {
                                return DetailPage(
                                    'assets/bgv3.jpg', 'See outerior');
                              }));
                            })),
                  ),
                  Card(
                    child: ListTile(
                        leading: ConstrainedBox(
                            constraints: BoxConstraints(
                                minWidth: 50,
                                minHeight: 50,
                                maxHeight: 65,
                                maxWidth: 75),
                            child: Image.asset(
                              'assets/bgv4.jpg',
                              fit: BoxFit.cover,
                            )),
                        title: Text('See Interior'),
                        trailing: RaisedButton(
                            child: Text('Details'),
                            onPressed: () {
                              Navigator.push(ctx,
                                  MaterialPageRoute(builder: (builder) {
                                return DetailPage(
                                    'assets/bgv4.jpg', 'See Interior');
                              }));
                            })),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
