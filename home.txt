// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double numOne = 0.0;
  double numTwo = 0.0;
  String result = '0';
  String output = '0';
  String operation = '';

  FunOnPressed(String ButtonValue) {
    if (ButtonValue == 'C') {
      numOne = 0.0;
      numTwo = 0.0;
      result = '0';
      output = '0';
      operation = '';
    } else if (ButtonValue == 'DEL') {
      output = output.toString().substring(0, output.length - 1);
      if (output.isEmpty) {
        output = '0';
      }
    } else if (ButtonValue == '+' ||
        ButtonValue == '-' ||
        ButtonValue == 'X' ||
        ButtonValue == '/') {
      numOne = double.parse(result);
      operation = ButtonValue;
      output = '0';
      result += ButtonValue;
    } else if (ButtonValue == '.') {
      if (output.contains('.')) {
      } else {
        output += ButtonValue;
      }
    } else if (ButtonValue == '+/-') {
      //if (result == '0') return;

      if (result.toString().contains('-')) {
        result.toString().substring(1);
        output = result;
      } else {
        result = '-' + result;
        output = result;
      }
    } else if (ButtonValue == '%') {
      numTwo = double.parse(result);
      output = (numTwo / 100).toString();
    } else if (ButtonValue == '=') {
      numTwo = double.parse(result);
      if (operation == '+') {
        output = (numOne + numTwo).toString();
      }
      if (operation == '-') {
        output = (numOne - numTwo).toString();
      }
      if (operation == 'X') {
        output = (numOne * numTwo).toString();
      }
      if (operation == '/') {
        output = (numOne / numTwo).toString();
      }
    } else {
      if (output == '0') {
        output = ButtonValue;
      } else {
        output += ButtonValue;
      }
    }
    setState(() {
      result = double.parse(output).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Calculator'),
      ),
      body: Container(
        color: Color.fromARGB(255, 219, 210, 210),
        child: Padding(
          padding: EdgeInsets.all(0.0),
          child: SafeArea(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Text(
                        "$output",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 70,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 100.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                        ),
                        child: RaisedButton(
                          onPressed: () {
                            FunOnPressed('C');
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.lightBlue,
                          child: Text(
                            "C",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 1,
                    // ),
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 100.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                        ),
                        child: RaisedButton(
                          onPressed: () {
                            FunOnPressed('DEL');
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.lightBlue,
                          child: Text(
                            "DEL",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 2,
                    // ),
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 100.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                        ),
                        child: RaisedButton(
                          onPressed: () {
                            FunOnPressed('%');
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.lightBlue,
                          child: Text(
                            "%",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 2,
                    // ),
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 100.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                        ),
                        child: RaisedButton(
                          onPressed: () {
                            FunOnPressed('/');
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.lightBlue,
                          child: Text(
                            "/",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 1,
                // ),
                Row(
                  children: [
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 100.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                        ),
                        child: RaisedButton(
                          onPressed: () {
                            FunOnPressed('7');
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.lightBlue,
                          child: Text(
                            "7",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 2,
                    // ),
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 100.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                        ),
                        child: RaisedButton(
                          onPressed: () {
                            FunOnPressed('8');
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.lightBlue,
                          child: Text(
                            "8",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 2,
                    // ),
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 100.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                        ),
                        child: RaisedButton(
                          onPressed: () {
                            FunOnPressed('9');
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.lightBlue,
                          child: Text(
                            "9",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 2,
                    // ),
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 100.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                        ),
                        child: RaisedButton(
                          onPressed: () {
                            FunOnPressed('X');
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.lightBlue,
                          child: Text(
                            "X",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 1,
                // ),
                Row(
                  children: [
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 100.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                        ),
                        child: RaisedButton(
                          onPressed: () {
                            FunOnPressed('4');
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.lightBlue,
                          child: Text(
                            "4",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 2,
                    // ),
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 100.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                        ),
                        child: RaisedButton(
                          onPressed: () {
                            FunOnPressed('5');
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.lightBlue,
                          child: Text(
                            "5",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 2,
                    // ),
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 100.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                        ),
                        child: RaisedButton(
                          onPressed: () {
                            FunOnPressed('6');
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.lightBlue,
                          child: Text(
                            "6",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 2,
                    // ),
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 100.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                        ),
                        child: RaisedButton(
                          onPressed: () {
                            FunOnPressed('-');
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.lightBlue,
                          child: Text(
                            "-",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 1,
                // ),
                Row(
                  children: [
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 100.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                        ),
                        child: RaisedButton(
                          onPressed: () {
                            FunOnPressed('1');
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.lightBlue,
                          child: Text(
                            "1",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 2,
                    // ),
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 100.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                        ),
                        child: RaisedButton(
                          onPressed: () {
                            FunOnPressed('2');
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.lightBlue,
                          child: Text(
                            "2",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 2,
                    // ),
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 100.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                        ),
                        child: RaisedButton(
                          onPressed: () {
                            FunOnPressed('3');
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.lightBlue,
                          child: Text(
                            "3",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 2,
                    // ),
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 100.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                        ),
                        child: RaisedButton(
                          onPressed: () {
                            FunOnPressed('+');
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.lightBlue,
                          child: Text(
                            "+",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 1,
                // ),
                Row(
                  children: [
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 100.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                        ),
                        child: RaisedButton(
                          onPressed: () {
                            FunOnPressed('+/-');
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.lightBlue,
                          child: Text(
                            "+/-",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 2,
                    // ),
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 100.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                        ),
                        child: RaisedButton(
                          onPressed: () {
                            FunOnPressed('0');
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.lightBlue,
                          child: Text(
                            "0",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 2,
                    // ),
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 100.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                        ),
                        child: RaisedButton(
                          onPressed: () {
                            FunOnPressed('.');
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.lightBlue,
                          child: Text(
                            ".",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 2,
                    // ),
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 100.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                        ),
                        child: RaisedButton(
                          onPressed: () {
                            FunOnPressed('=');
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.lightBlue,
                          child: Text(
                            "=",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
