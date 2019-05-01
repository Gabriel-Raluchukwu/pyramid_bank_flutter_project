import 'package:flutter/material.dart';

class RefreshInstruction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'swipe up to reload'.toUpperCase(),
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 24.0,
            ),
          ),
          Icon(
            Icons.arrow_upward,
            size: 76,
            color: Colors.grey[600],
          ),
        ],
      ),
    );
  }
}
