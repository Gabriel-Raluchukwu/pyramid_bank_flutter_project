import 'package:flutter/material.dart';

import '../../../ApplicationConstants.dart' as constants;
import '../../../Controllers/Validations.dart';
import '../../../Widgets/CustomWidget_Drawer.dart';
import '../../../Widgets/CustomWidget_FormInput.dart';
import '../../../Widgets/CustomWidget_FormButton.dart';
import '../../../Widgets/CustomWidget_DropdownButtonFormField.dart';

//Model
import '../../../Models/CardRequestDTO.dart';

typedef ValidationFunctions(String value, String formtext);

List<ValidationFunctions> transactionPinValidation = [
  validateEmpty,
  validateNumbers,
  validateTransactionPin,
];

class CardRequestConfirmation extends StatefulWidget {
  final PyramidDrawer drawer;
  final GlobalKey<FormState> cardRequestConfirmationFormkey =
      GlobalKey<FormState>();

  CardRequestConfirmation({@required this.drawer});
  @override
  _CardRequestConfirmationState createState() =>
      _CardRequestConfirmationState();
}

class _CardRequestConfirmationState extends State<CardRequestConfirmation> {
  GlobalKey<FormState> formkey;
  PyramidDrawer drawer;
  CardRequestDTO cardRequestDTO = CardRequestDTO();

  @override
  void initState() {
    super.initState();
    drawer = widget.drawer;
    formkey = widget.cardRequestConfirmationFormkey;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('CONFIRM CARD REQUEST'),
          iconTheme: IconThemeData(
            color: Colors.grey[900],
          ),
        ),
        drawer: drawer,
        body: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/pageBackground.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
          ),
          child: Form(
            key: formkey,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: constants.FormSpacing,
                ),
                StringDropdownForm(
                  hint: 'Card Type',
                  errorMessage: 'Please select a Card Type',
                  options: <String>['Master', 'Verve'],
                  save: (String value) {
                    //Todo: Convert value to int
                    //cardRequestDTO.cardType = value;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('Card Replacement cost : N 1,000'),
                ),
                SizedBox(
                  height: constants.FormSpacing,
                ),
                FormInputWidget(
                  hintText: 'Pin',
                  keyboardType: TextInputType.phone,
                  callbackFunctions: transactionPinValidation,
                  save: (String value) {
                    cardRequestDTO.transactionPin = int.parse(value);
                  },
                ),
                SizedBox(
                  height: 30.0,
                ),
                FormButton(
                  formKey: formkey,
                  buttonText: 'PURCHASE',
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
