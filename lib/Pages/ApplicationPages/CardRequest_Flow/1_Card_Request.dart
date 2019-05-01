import 'package:flutter/material.dart';

import './2_Card_Request.dart';
import '../../../Widgets/CustomWidget_Drawer.dart';

class CardRequestTermsAndConditions extends StatelessWidget {
  final PyramidDrawer drawer;

  CardRequestTermsAndConditions({@required this.drawer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REQUEST CREDIT CARD'),
      ),
      drawer: drawer,
      body: CardRequestTerms(),
    );
  }
}

class CardRequestTerms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/pageBackground.png'),
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
            child: RichText(
              text: TextSpan(
                text: 'Click here to View ',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Credit Card Terms And Conditions',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text(
              'By clicking the "I ACCEPT" button, I confirm that I have read, understood '
                  'and therefore agree to be bound by the Credit Card Terms and Conditions '
                  'before filling and submitting this application.',
              softWrap: true,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            child: Text(
              '''I hereby irrevocably authorize the bank to debit my domiciliary/current/savings account on a monthly basis or such other times as the bank may determine with my minimum due payment amount or any other amount in prepayment of my monthly outstanding Credit Card obligations.''',
              softWrap: true,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            child: Text(
              'I hereby warrant that the information supplied by meis true and accurate. The card '
                  'is issued subject to the Banks Credit Card Terms and Conditions.',
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
  final PyramidDrawer drawer;
//final VoidCallback disagreeFunction;

  Buttons(
      { //@required
      this.agreeFunction,
      this.drawer});

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
                Navigator.popAndPushNamed(context, '/HomeScreen');
              },
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: AgreeButton(
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CardRequestConfirmation(
                          drawer: drawer,
                        ),
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
