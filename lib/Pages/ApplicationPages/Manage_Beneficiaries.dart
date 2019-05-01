import 'package:flutter/material.dart';

import '../../Widgets/Refresh.dart';
import '../../Widgets/CustomWidget_Drawer.dart';
import '../../Widgets/CustomWidget_BeneficiaryTile.dart';

class BeneficiariesManagement extends StatefulWidget {
  final List<BeneficiaryTile> beneficiaries;
  final PyramidDrawer drawer;

  BeneficiariesManagement(this.beneficiaries, {@required this.drawer})
      : assert(drawer != null);

  @override
  _BeneficiariesManagementState createState() =>
      _BeneficiariesManagementState();
}

class _BeneficiariesManagementState extends State<BeneficiariesManagement> {
  PyramidDrawer drawer;
  List<BeneficiaryTile> beneficiaries;

  @override
  void initState() {
    super.initState();
    drawer = widget.drawer;
    beneficiaries = widget.beneficiaries;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('MANAGE BENEFICIARIES'),
          iconTheme: IconThemeData(
            color: Colors.grey[900],
          ),
        ),
        drawer: drawer,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/pageBackground.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.dstATop),
            ),
          ),
          child: _BeneficiaryList(beneficiaries: beneficiaries),
        ),
      ),
    );
  }
}

class _BeneficiaryList extends StatefulWidget {
  final List<BeneficiaryTile> beneficiaries;
  final GlobalKey<RefreshIndicatorState> _refreshIndicator =
      GlobalKey<RefreshIndicatorState>();

  _BeneficiaryList({@required this.beneficiaries});

  @override
  _BeneficiaryListState createState() => _BeneficiaryListState();
}

class _BeneficiaryListState extends State<_BeneficiaryList> {
  List<BeneficiaryTile> beneficiaries;
  GlobalKey<RefreshIndicatorState> indicatorKey;

  @override
  void initState() {
    super.initState();
    beneficiaries = widget.beneficiaries;
    indicatorKey = widget._refreshIndicator;
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      key: indicatorKey,
      color: Colors.green,
      onRefresh: () {},
      child: (beneficiaries != null)
          ? ListView.builder(
              itemCount: beneficiaries.length,
              itemBuilder: (context, index) {
                return beneficiaries[index];
              },
            )
          : RefreshInstruction(),
    );
  }
}
