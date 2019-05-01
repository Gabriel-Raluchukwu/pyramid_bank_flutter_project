import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../ApplicationPages/Add_Beneficiary.dart';
import '../ApplicationPages/Mobile_TopUp_page.dart';
import '../ApplicationPages/Transfer_OtherBank_Page.dart';
import '../ApplicationPages/Transfer_PyramidBank_Page.dart';

import '../../Controllers/Utilities.dart' as Utilities;
import '../../Widgets/CustomWidget_Drawer.dart';
import '../../Widgets/CustomWidget_BottomNavigationBar.dart';

//Test: Remove
//import '../../Widgets/CustomWidget_Notification.dart';

class HomePage extends StatefulWidget {
  final String name;

  HomePage({this.name = 'Mbaebie Raluchukwu Gabriel'});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name;
  int _selectedIndex;

  void bottomBarTap(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => IntraBankTransfer(
                  drawer: PyramidDrawer(),
                ),
          ),
        );
      }
      if (_selectedIndex == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InterBankTransfer(
                  drawer: PyramidDrawer(),
                ),
          ),
        );
      }
      if (_selectedIndex == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AddBeneficiary(
                  drawer: PyramidDrawer(),
                ),
          ),
        );
      }
      if (_selectedIndex == 3) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MobileTopUp(
                  drawer: PyramidDrawer(),
                ),
          ),
        );
      }
    });
  }

  @override
  void initState() {
    super.initState();
    name = widget.name;
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('ACCOUNTS'),
          iconTheme: IconThemeData(
            color: Colors.grey[900],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.grey[900],
              ),
              onPressed: () {
                print('Settings button was pressed');
              },
            )
          ],
        ),
        drawer: PyramidDrawer(
          name: name,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: bottomNavBarItems(),
          onTap: bottomBarTap,
        ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/pageBackground.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.7), BlendMode.dstATop),
              ),
            ),
            child: Column(
              children: <Widget>[
                AccountHeaderDisplay(
                  accountNumber: '123457890',
                  accountName: 'Mbaebie Gabriel Raluchukwu',
                  accountBalance: Utilities.currencyFormat(12000000),
                ),
                Expanded(
                  child: ListView(
                    children: <Widget>[],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    // drawer
  }
}

class AccountHeaderDisplay extends StatelessWidget {
  final String accountNumber;
  final String accountName;
  final String accountBalance;

  AccountHeaderDisplay(
      {this.accountName, this.accountNumber, this.accountBalance})
      : assert(accountBalance != null),
        assert(accountName != null),
        assert(accountNumber != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.16,
      color: Colors.white24,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.account_balance,
                        color: Colors.red,
                        size: 26,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Pyramid Bank'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(5.0),
                      child: Text(
                        accountNumber,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      width: double.infinity,
                      margin: EdgeInsets.all(5.0),
                      child: Text(
                        accountName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 36.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Text(
                  'Account Balance'.toUpperCase(),
                  style: TextStyle(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'N: $accountBalance',
                  style: TextStyle(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
