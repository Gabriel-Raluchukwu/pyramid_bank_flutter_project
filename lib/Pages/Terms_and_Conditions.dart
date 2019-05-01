import 'package:flutter/material.dart';

import './Create_Account_Page.dart';

class TermsAndConditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TERMS AND CONDITIONS'),
        iconTheme: IconThemeData(
          color: Colors.grey[900],
        ),
      ),
      body: Terms(),
    );
  }
}

class Terms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/logInBackground.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5), BlendMode.dstATop),
        ),
      ),
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5.0),
            child: Text(
              'TERMS AND CONDITIONS FOR PYRAMID MOBILE BANKING APPLICATION',
              softWrap: true,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text(
              'You should read these Terms and Conditions prior to using the pyramid '
                  'Mobile Banking Application. By Choosing the "I AGREE":',
              softWrap: true,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            child: Text(
              '(1) The Bank will not be held liable for whatsoever issues '
                  'that may occur as a result of the installation of the application',
              softWrap: true,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            child: Text(
              '(2) The Bank will not be held liable for customer '
                  'compromising their mobile Banking Password',
              softWrap: true,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            child: Text(
              '(3) The Bank will not be held liable for increasing your transaction limit',
              softWrap: true,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            child: Text(
              '(4) The Bank will not be held liable for network issues from their Telco',
              softWrap: true,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Buttons(),
        ],
      ),
    ));
  }
}

class Buttons extends StatelessWidget {
  final VoidCallback agreeFunction;
//final VoidCallback disagreeFunction;

  Buttons(
      { //@required
      this.agreeFunction});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: DisagreeButton(
              () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: AgreeButton(
              () {
                //TODO: change
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreateCustomerAccountPage(),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class DisagreeButton extends StatelessWidget {
  final VoidCallback navigateFunction;

  DisagreeButton(this.navigateFunction);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          10.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
        child: Row(
          children: <Widget>[
            Text('I DISAGREE'),
            SizedBox(
              width: 5.0,
            ),
            Icon(Icons.close),
          ],
        ),
      ),
      onPressed: navigateFunction,
    );
  }
}

class AgreeButton extends StatelessWidget {
  final VoidCallback navigateFunction;

  AgreeButton(this.navigateFunction);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
        child: Row(
          children: <Widget>[
            Text('I AGREE'),
            SizedBox(
              width: 5.0,
            ),
            Icon(Icons.check),
          ],
        ),
      ),
      onPressed: navigateFunction,
    );
  }
}
