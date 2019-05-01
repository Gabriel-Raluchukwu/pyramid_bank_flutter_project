import 'package:flutter/material.dart';

Widget modalPopUp(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.check,
                      color: Colors.green,
                      size: 36.0,
                    ),
                    Text(
                      'Account created Succesfully',
                      softWrap: true,
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Container(
                    width: 90,
                    height: 90,
                    child: Image.asset('assets/pyramid.png'),
                  ),
                  Text(
                    'Welcome to Pyramid Bank',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10.0)),
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.all(20.0),
                    child: Column(children: <Widget>[
                      Text(
                        'Your Account Number has been sent to your E-mail Address',
                        softWrap: true,
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Thank you for banking with us',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ]),
                  ),
                  Container(),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
