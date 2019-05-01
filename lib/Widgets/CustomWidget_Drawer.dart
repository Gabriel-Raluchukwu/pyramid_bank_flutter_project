import 'package:flutter/material.dart';

import '../Pages/ApplicationPages/Add_Beneficiary.dart';
import '../Pages/ApplicationPages/Mobile_TopUp_page.dart';
import '../Pages/ApplicationPages/Settings_ChangePin.dart';
import '../Pages/ApplicationPages/Manage_Beneficiaries.dart';
import '../Pages/ApplicationPages/Settings_ChangePassword.dart';
import '../Pages/ApplicationPages/Transfer_PyramidBank_Page.dart';
import '../Pages/ApplicationPages/CardRequest_Flow/1_Card_Request.dart';
import '../Pages/ApplicationPages/Transfer_OtherBank_Page.dart';

final Color drawerIconColor = Colors.grey[900];

class PyramidDrawer extends StatelessWidget {
  final String name;
  final TextStyle drawerTextStyle = TextStyle(
    color: Colors.grey[900],
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    shadows: [
      Shadow(color: Colors.black12),
      Shadow(color: Colors.black26),
    ],
  );

  //TODO: Get name property from shared preferences
  PyramidDrawer({this.name = ''}) : assert(name != null);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/drawerBackground.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.5), BlendMode.dstATop),
          ),
        ),
        // color: Colors.blueGrey,
        child: ListView(
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Icon(Icons.account_balance, size: 24, color: Colors.red),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    padding: EdgeInsets.all(6.0),
                    child: Text(
                      'PYRAMID BANK',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.grey[900],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //DrawerHeader(),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(5.0),
                  padding: EdgeInsets.all(6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        '$name',
                        style: drawerTextStyle,
                      ),
                    ],
                  ),
                ),
                TransferExpansionTile(
                    iconSize: 24.0, drawerTextStyle: drawerTextStyle),
                AirtimeAndBillsPaymentExpansionTile(
                    iconSize: 24.0, drawerTextStyle: drawerTextStyle),
                Beneficiaries(iconSize: 24.0, drawerTextStyle: drawerTextStyle),
                CardManagement(
                    iconSize: 24.0, drawerTextStyle: drawerTextStyle),
                Settings(iconSize: 24.0, drawerTextStyle: drawerTextStyle),
                LogOutTile(drawerTextStyle: drawerTextStyle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TransferExpansionTile extends StatelessWidget {
  final num iconSize;
  final TextStyle drawerTextStyle;

  TransferExpansionTile(
      {@required this.iconSize, @required this.drawerTextStyle});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Icon(
        Icons.credit_card,
        color: drawerIconColor,
        size: iconSize,
      ),
      title: Text(
        'Transfers',
        style: drawerTextStyle,
      ),
      children: <Widget>[
        ListTile(
            leading: Icon(
              Icons.loop,
              size: iconSize,
              color: drawerIconColor,
            ),
            title: Text(
              'Transfer to Self',
              style: drawerTextStyle,
            ),
            onTap: () {}),
        ListTile(
          leading: Icon(
            Icons.payment,
            color: drawerIconColor,
            size: iconSize,
          ),
          title: Text(
            'To Pyramind Bank',
            style: drawerTextStyle,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => IntraBankTransfer(
                      drawer: PyramidDrawer(),
                    ),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(
            Icons.account_balance,
            color: drawerIconColor,
            size: iconSize,
          ),
          title: Text(
            'To other Banks',
            style: drawerTextStyle,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => InterBankTransfer(
                      drawer: PyramidDrawer(),
                    ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class AirtimeAndBillsPaymentExpansionTile extends StatelessWidget {
  final num iconSize;
  final TextStyle drawerTextStyle;
  AirtimeAndBillsPaymentExpansionTile(
      {@required this.iconSize, @required this.drawerTextStyle});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Icon(
        Icons.monetization_on,
        size: iconSize,
        color: drawerIconColor,
      ),
      title: Text(
        'AirTime purchase',
        style: drawerTextStyle,
      ),
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.phone_iphone,
            size: iconSize,
            color: drawerIconColor,
          ),
          title: Text('Mobile Top-up'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MobileTopUp(
                      drawer: PyramidDrawer(),
                    ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class Beneficiaries extends StatelessWidget {
  final num iconSize;
  final TextStyle drawerTextStyle;
  Beneficiaries({@required this.iconSize, @required this.drawerTextStyle});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Icon(
        Icons.people,
        size: iconSize,
        color: drawerIconColor,
      ),
      title: Text(
        'Beneficiaries',
        style: drawerTextStyle,
      ),
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.group_add,
            color: drawerIconColor,
            size: iconSize,
          ),
          title: Text(
            'Add Beneficiary',
            style: drawerTextStyle,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddBeneficiary(
                      drawer: PyramidDrawer(),
                    ),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(
            Icons.people,
            color: drawerIconColor,
            size: iconSize,
          ),
          title: Text(
            'Manage Beneficiaries',
            style: drawerTextStyle,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BeneficiariesManagement(
                      null,
                      drawer: PyramidDrawer(),
                    ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class CardManagement extends StatelessWidget {
  final num iconSize;
  final TextStyle drawerTextStyle;
  CardManagement({@required this.iconSize, @required this.drawerTextStyle});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Icon(
        Icons.credit_card,
        size: iconSize,
        color: drawerIconColor,
      ),
      title: Text(
        'Card Management',
        style: drawerTextStyle,
      ),
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.credit_card,
            color: drawerIconColor,
            size: iconSize,
          ),
          title: Text(
            'Card Request',
            style: drawerTextStyle,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CardRequestTermsAndConditions(
                      drawer: PyramidDrawer(),
                    ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class Settings extends StatelessWidget {
  final num iconSize;
  final TextStyle drawerTextStyle;
  Settings({@required this.iconSize, @required this.drawerTextStyle});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Icon(
        Icons.settings,
        size: iconSize,
        color: drawerIconColor,
      ),
      title: Text(
        'Settings',
        style: drawerTextStyle,
      ),
      children: <Widget>[
        ListTile(
            leading: Icon(
              Icons.security,
              color: drawerIconColor,
              size: iconSize,
            ),
            title: Text(
              'Change Pin',
              style: drawerTextStyle,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChangePin(),
                ),
              );
            }),
        ListTile(
            leading: Icon(
              Icons.enhanced_encryption,
              color: drawerIconColor,
              size: iconSize,
            ),
            title: Text(
              'Change Password',
              style: drawerTextStyle,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChangePassword(),
                ),
              );
            }),
      ],
    );
  }
}

class LogOutTile extends StatelessWidget {
  final TextStyle drawerTextStyle;

  LogOutTile({@required this.drawerTextStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      // This align moves the children to the bottom
      child: Align(
        alignment: Alignment.bottomCenter,
        // This container holds all the children that will be aligned
        // on the bottom and should not scroll with the above ListView
        child: Container(
          child: Column(
            children: <Widget>[
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.exit_to_app,
                  color: drawerIconColor,
                ),
                title: Text(
                  'LOG OUT',
                  style: drawerTextStyle,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
