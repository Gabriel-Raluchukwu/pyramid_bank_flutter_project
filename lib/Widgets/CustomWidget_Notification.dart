import 'package:flutter/material.dart';

class NotificationDialog extends StatelessWidget {
  final bool result;
  final IconData icon;
  final String resultMessage;
  final String message;

  NotificationDialog(
      {@required this.result,
      @required this.icon,
      @required this.resultMessage,
      @required this.message})
      : assert(result != null),
        assert(icon != null),
        assert(resultMessage != null),
        assert(message != null);

  @override
  Widget build(BuildContext context) {
    Color resultColor = (result) ? Colors.green[800] : Colors.red[800];

    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.all(10),
        //width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height * 0.5,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Icon(
                icon,
                size: 60,
                color: resultColor,
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                resultMessage,
                style: TextStyle(
                    fontSize: 18.0,
                    color: resultColor,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                message,
                softWrap: true,
              ),
              SizedBox(
                height: 40.0,
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                  side: BorderSide(),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                color: Colors.red[400],
                child: Text(
                  'CLOSE',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
