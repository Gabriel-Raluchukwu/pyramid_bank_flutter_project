import 'package:flutter/material.dart';

import '../../Controllers/Validations.dart';
import '../../ApplicationConstants.dart' as constants;
import '../../Widgets/CustomWidget_Drawer.dart';
import '../../Widgets/CustomWidget_FormInput.dart';
import '../../Widgets/CustomWidget_FormButton.dart';

//Model
import '../../Models/IntraBankTransferDTO.dart';

typedef ValidationFunctions(String value, String formtext);

List<ValidationFunctions> nameValidation = [
  validateEmpty,
  validateCharacters,
];

List<ValidationFunctions> accountNameValidation = [
  validateEmpty,
  validateAccountName,
];

List<ValidationFunctions> accountNumberValidation = [
  validateEmpty,
  validateNumbers,
  validateBVNNumber,
];

List<ValidationFunctions> amountValidation = [
  validateEmpty,
  validateAmount,
];

List<ValidationFunctions> transactionPinValidation = [
  validateEmpty,
  validateNumbers,
  validateTransactionPin,
];

class IntraBankTransfer extends StatefulWidget {
  final GlobalKey<FormState> beneficiaryFormKey = GlobalKey<FormState>();
  final PyramidDrawer drawer;

  IntraBankTransfer({@required this.drawer});

  @override
  _IntraBankTransferState createState() => _IntraBankTransferState();
}

class _IntraBankTransferState extends State<IntraBankTransfer> {
  PyramidDrawer drawer;
  GlobalKey<FormState> formkey;
  IntraBankTransferDTO intraBankTransferDTO = IntraBankTransferDTO();

  @override
  void initState() {
    super.initState();
    drawer = widget.drawer;
    formkey = widget.beneficiaryFormKey;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TRANSFER TO PYRAMID BANK'),
        iconTheme: IconThemeData(
          color: Colors.grey[900],
        ),
      ),
      drawer: drawer,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/pageBackground.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.dstATop),
            ),
          ),
          child: Form(
            key: formkey,
            child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(5.0),
                  padding: EdgeInsets.all(10.0),
                  width: double.infinity,
                  height: 25,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Maximum daily Limit: N 1,000,000.00',
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: constants.FormSpacing,
                ),
                FormInputWidget(
                  hintText: 'Account Number',
                  keyboardType: TextInputType.number,
                  callbackFunctions: accountNumberValidation,
                  save: (String value) {
                    intraBankTransferDTO.recipientAccountNumber = value;
                  },
                ),
                SizedBox(
                  height: constants.FormSpacing,
                ),
                FormInputWidget(
                  hintText: 'Account Name',
                  keyboardType: TextInputType.text,
                  callbackFunctions: accountNameValidation,
                  save: (String value) {
                    intraBankTransferDTO.recipientAccountName = value;
                  },
                ),
                SizedBox(
                  height: constants.FormSpacing,
                ),
                FormInputWidget(
                  hintText: 'Amount',
                  keyboardType: TextInputType.phone,
                  callbackFunctions: amountValidation,
                  save: (String value) {
                    intraBankTransferDTO.transferAmount = double.parse(value);
                  },
                ),
                SizedBox(
                  height: constants.FormSpacing,
                ),
                FormInputWidget(
                  hintText: 'Description',
                  keyboardType: TextInputType.multiline,
                  callbackFunctions: nameValidation,
                  save: (String value) {
                    intraBankTransferDTO.description = value;
                  },
                ),
                SizedBox(
                  height: constants.FormSpacing,
                ),
                FormInputWidget(
                  hintText: 'Pin',
                  keyboardType: TextInputType.phone,
                  callbackFunctions: transactionPinValidation,
                  save: (String value) {
                    intraBankTransferDTO.transactionPin = int.parse(value);
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                FormButton(
                  formKey: formkey,
                  buttonText: 'PROCEED',
                  function: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
