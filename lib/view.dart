
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Center(

          child: Text(
            'Calculator',
            style: TextStyle(fontSize: 30, color: Colors.black,fontWeight: FontWeight.bold),
          ),
        ),

        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(right: 15),
              height: 160,
              width: 450,
              decoration: BoxDecoration(
                color: Colors.black26,
              ),
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Center(
                    child: Text(
                      Operators.result.toString(),
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  )),
            ),

            Container(
              width: 420,
              height: 150,
              color: Colors.black26,
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                     padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(5),
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.deepOrangeAccent,
                      ),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            Operators.num1 = double.parse(value);
                          });
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            hintText: '  Enter value 1',
                            hintStyle: TextStyle(
                                fontSize: 20,height: 0.4,
                                color: Colors.white,
                                fontWeight: FontWeight.w900)),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(5),
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.deepOrangeAccent,
                      ),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            Operators.num2 = double.parse(value);
                          });
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            hintText: 'Enter value 2',
                            hintStyle: TextStyle(
                                fontSize: 20,height: 0.4,
                                fontWeight: FontWeight.w900,
                                color: Colors.white)),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 350,
              width: 420,
              color: Colors.black26,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            Operators.operator = "+";
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(top: 10, left: 2, right: 5),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.deepOrangeAccent,
                          ),
                          child: Text(
                            '+',
                            style: TextStyle(fontSize: 50),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Operators.operator = "-";
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(top: 10, left: 2, right: 5),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.deepOrangeAccent,
                          ),
                          child: Text(
                            '-',
                            style: TextStyle(fontSize: 50),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Operators.operator = "*";
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(top: 10, left: 2, right: 5),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.deepOrangeAccent,
                          ),
                          child: Text(
                            '*',
                            style: TextStyle(fontSize: 50,),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Operators.operator = "/";
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(top: 10, left: 2, right: 5),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.deepOrangeAccent,
                          ),
                          child: Text(
                            '/',
                            style: TextStyle(fontSize: 50),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      if (Operators.operator == '+') {
                        Operators.result = Operators.num1 + Operators.num2;
                      } else if (Operators.operator == '-') {
                        Operators.result = Operators.num1 - Operators.num2;
                      } else if (Operators.operator == '*') {
                        Operators.result = Operators.num1 * Operators.num2;
                      } else if (Operators.operator == '/') {
                        Operators.result = Operators.num1 / Operators.num2;
                      }
                      setState(() {
                        print('x');
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 40),
                      width: 250,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.deepOrangeAccent,
                      ),
                      child: Text(
                        '=',
                        style: TextStyle(fontSize: 50),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
class Operators{
  static double num1;
  static double num2;
  static double result;
  static String operator;
}