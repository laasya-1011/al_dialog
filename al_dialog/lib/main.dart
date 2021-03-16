//import 'package:al_dialog/SkNalert.dart';
import 'package:flutter/material.dart';
//import 'package:ndialog/ndialog.dart';
import 'package:flutter/cupertino.dart';
//import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //double width = MediaQuery.of(context).size.width;
    //double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text('Dialogs'),
        ),
        body: SingleChildScrollView(
          child: Container(
              child: Center(
                  child: FlatButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) =>
                    LogoutOverlay(), 
              );
            },
            child: Text('open dialog'.toUpperCase()),
          ))),
        ));
  } 
}

// dialog

class LogoutOverlay extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LogoutOverlayState();
}

class LogoutOverlayState extends State<LogoutOverlay>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    /*  controller =
            AnimationController(vsync: this, duration: Duration(milliseconds: 450));
        scaleAnimation =
            CurvedAnimation(parent: controller, curve: Curves.elasticInOut);  // upgrade your flutter // let's work on dif exammple // wait

        controller.addListener(() {
          setState(() {});
        });

        controller.forward(); */
  }

  @override
  Widget build(BuildContext context) {
    return Center( 
        child: Material(
            color: Colors.transparent,

            //  color: Colors.transparent,
            child: Container(
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(15.0),
              height: 300.0,
              decoration: ShapeDecoration(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0))),  
              child: ListView(
                children: [
                  Container(
                    child: Text("first widget"),
                    height: 30,
                    width: 400,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Text("2nd widget"),
                    height: 30,
                    width: 400,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Text("3rd widget"),
                    height: 30,
                    width: 400,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Text("4 widget"),
                    height: 30,
                    width: 400,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Text("5 widget"),
                    height: 30,
                    width: 400,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            )));
  }
}
