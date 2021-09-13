import 'package:flutter/material.dart';

void main() {
  runApp(getMyAppRoot());
}

Widget getMyAppRoot() {
  MaterialApp myApp = new MaterialApp(
    theme: new ThemeData(
      brightness: Brightness.dark,
    ),
    home: getHomeWidget(),
    debugShowCheckedModeBanner: false,
  );
  return myApp;
}

Widget getHomeWidget() {
  PreferredSizeWidget appBar = AppBar(
    title: Text("ITI Summer course"),
    centerTitle: true,
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.share),
      ),
    ],
  );
  Widget body = Center(
    child: Text("Hello world"),
  );
  Widget homeWidget = Scaffold(
    appBar: appBar,
    body: body,
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: onFloatingButtonClicked,
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  );
  return homeWidget;
}

void onFloatingButtonClicked() {
  print("Clicked");
}
