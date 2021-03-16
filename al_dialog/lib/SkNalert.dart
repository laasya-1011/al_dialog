import 'package:sk_alert_dialog/sk_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:al_dialog/UtilsImporter.dart';

class SkNalert extends StatefulWidget {
  @override
  _SkNalertState createState() => _SkNalertState();
}

class _SkNalertState extends State<SkNalert> {
  @override
  Widget build(BuildContext context) {
    Widget customWidget() {
      return new Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Thank you for reviewing the package',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).primaryColorDark.withOpacity(0.7),
                    fontSize: 20),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    color: const Color(0xFF50A1FF),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'The End !',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  )
                ],
              ),
            ],
          ));
    }

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'SkNAlertDialogs'), // where is emulator sir I have connected the actual device okay
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          height: height,
          child: ListView(
            children: [
              FlatButton(
                color: Colors.blue,
                child: Text('SkAlert Dialog'),
                onPressed: () {
                  SKAlertDialog.show(
                    context: context,
                    type: SKAlertType.info,
                    title: 'Simple Alert',
                    message: 'Hi! Welcome to SKALertDialog',
                    onOkBtnTap: (value) {
                      print('Okay Button Tapped');
                    },
                  );
                },
              ),
              FlatButton(
                color: Colors.blue,
                child: Text('SkAlert Dialog'),
                onPressed: () {
                  SKAlertDialog.show(
                    context: context,
                    type: SKAlertType.buttons,
                    title: 'Alert with buttons',
                    message: 'Shall we move to next alert?',
                    onOkBtnTap: (value) {
                      print('Okay Button Tapped');
                    },
                    onCancelBtnTap: (value) {
                      print('Cancel Button Tapped');
                    },
                  );
                },
              ),
              FlatButton(
                color: Colors.blue,
                child: Text('SkAlert Dialog'),
                onPressed: () {
                  SKAlertDialog.show(
                    context: context,
                    type: SKAlertType.loginform,
                    title: 'Login Form',
                    okBtnText: 'LOGIN',
                    onOkBtnTap: (value) {
                      print('Okay Button Tapped');
                    },
                    onCancelBtnTap: (value) {
                      print('Cancel Button Tapped');
                    },
                    onEmailTextFieldChanged: (value) {
                      print('On Email Text Changed $value');
                    },
                    onPasswordTextFieldChanged: (value) {
                      print('On Password Text Changed $value');
                    },
                  );
                },
              ),
              FlatButton(
                color: Colors.blue,
                child: Text('SkAlert Dialog'),
                onPressed: () {
                  SKAlertDialog.show(
                    context: context,
                    type: SKAlertType.checkbox,
                    checkBoxAry: {
                      'Choice One': true,
                      'Choice Two': false,
                      'Choice Three': true,
                      'Choice Four': false,
                      'Choice Five': false
                    },
                    title: 'Checkbox',
                    onCancelBtnTap: (value) {
                      print('Cancel Button Tapped');
                    },
                    onCheckBoxSelection: (value) {
                      print('onCheckBoxSelection $value');
                    },
                  );
                },
              ),
              FlatButton(
                color: Colors.blue,
                child: Text('SkAlert Dialog'),
                onPressed: () {
                  SKAlertDialog.show(
                    context: context,
                    type: SKAlertType.radiobutton,
                    radioButtonAry: {
                      'Choice One': 1,
                      'Choice Two': 2,
                      'Choice Three': 3,
                      'Choice Four': 4,
                      'Choice Five': 5
                    },
                    title: UtilsImporter().stringUtils.radio_button_alert_title,
                    onCancelBtnTap: (value) {
                      print('Cancel Button Tapped');
                    },
                    onRadioButtonSelection: (value) {
                      print('onRadioButtonSelection $value');
                    },
                  );
                },
              ),
              FlatButton(
                color: Colors.blue,
                child: Text('SkAlert Dialog'),
                onPressed: () {
                  SKAlertDialog.show(
                    context: context,
                    type: SKAlertType.custom,
                    customWidget: customWidget(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
