import 'package:flutter/material.dart';

TextStyle beneficiaryTextStyle = TextStyle(
  color: Colors.grey[800],
  fontSize: 14.0,
  fontWeight: FontWeight.bold,
);

class BeneficiaryTile extends StatelessWidget {
  final String from;
  final String to;
  final double amount;
  // final String bank;
  final DateTime dateTime;

  BeneficiaryTile(
      {@required this.from,
      @required this.to,
      @required this.amount,
      // @required this.bank,
      @required this.dateTime})
      : assert(from != null),
        assert(to != null),
        assert(amount != null),
        // assert(bank != null),
        assert(dateTime != null);

  @override
  Widget build(BuildContext context) {
    return Container();
    //     decoration: BoxDecoration(
    //       color: Colors.white70,
    //       borderRadius: BorderRadius.circular(10.0),
    //     ),
    //     width: MediaQuery.of(context).size.width,
    //     height: 75.0,
    //     //color: Colors.white,
    //     padding: EdgeInsets.all(5.0),
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         Expanded(
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: <Widget>[
    //               Row(
    //                 children: <Widget>[
    //                   Expanded(
    //                     flex: 2,
    //                     child: Container(
    //                       padding: EdgeInsets.all(5.0),
    //                       alignment: Alignment.centerLeft,
    //                       child: Text(nickName, style: beneficiaryTextStyle),
    //                     ),
    //                   ),
    //                   Container(
    //                     padding: EdgeInsets.all(5.0),
    //                     alignment: Alignment.centerLeft,
    //                     child: Text(
    //                       '$bank: $accountNumber',
    //                       style: TextStyle(
    //                           color: Colors.grey,
    //                           fontSize: 14.0,
    //                           fontWeight: FontWeight.w600),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //               Container(
    //                 padding: EdgeInsets.all(5.0),
    //                 alignment: Alignment.centerLeft,
    //                 child:
    //                     Text(fullName.toUpperCase(), style: beneficiaryTextStyle),
    //               ),
    //             ],
    //           ),
    //         ),
    //         Container(
    //           width: 97.0,
    //           child: Row(
    //             children: <Widget>[
    //               IconButton(
    //                 icon: Icon(
    //                   Icons.edit,
    //                   color: Colors.grey[900],
    //                 ),
    //                 onPressed: () {},
    //               ),
    //               IconButton(
    //                 icon: Icon(
    //                   Icons.delete_forever,
    //                   color: Colors.red,
    //                 ),
    //                 onPressed: () {},
    //               ),
    //             ],
    //           ),
    //         )
    //       ],
    //     ),
    // );
  }
}
