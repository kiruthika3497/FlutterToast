import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  initState() {
    super.initState();
  }

  void showLongToast() {
    Fluttertoast.showToast(
      msg: "This is Long Toast",
      duration: 25,
    );
  }

  void showColoredToast() {
    Fluttertoast.showToast(
        msg: "This is Colored Toast with android duration of 5 Sec",
        backgroundColor: Colors.red,
        duration: 25,
        textColor: Colors.white);
  }

  void showShortToast() {
    Fluttertoast.showToast(
        msg: "This is Short Toast",
        timeInSecForIos: 25);
  }

  void showTopShortToast() {
    Fluttertoast.showToast(
        msg: "This is Top Short Toast",
        duration: 25,
        gravity: ToastGravity.TOP,
        timeInSecForIos: 25);
  }

  void showCenterShortToast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 25);
  }

  void cancelToast() {
    Fluttertoast.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter Toast'),
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new RaisedButton(
                    child: new Text('Show Long Toast'),
                    onPressed: showLongToast),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new RaisedButton(
                    child: new Text('Show Short Toast'),
                    onPressed: showShortToast),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new RaisedButton(
                    child: new Text('Show Center Short Toast'),
                    onPressed: showCenterShortToast),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new RaisedButton(
                    child: new Text('Show Top Short Toast'),
                    onPressed: showTopShortToast),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new RaisedButton(
                    child: new Text('Show Colored Toast'),
                    onPressed: showColoredToast),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new RaisedButton(
                  child: new Text('Cancel Toasts'),
                  onPressed: cancelToast,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
