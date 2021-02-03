import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  String image, name;

  DetailPage(this.image, this.name);

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       body: Column(
  //     children: [
  //       Image(
  //         image: AssetImage(image),
  //       ),
  //       Text(name)
  //     ],
  //   ));
  // }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(name),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 33, 33, 33),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.image),
              ),
              Tab(
                icon: Icon(Icons.text_snippet),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Image(
              image: AssetImage(image),
            ),
            Center(
              child: Text(
                name,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
