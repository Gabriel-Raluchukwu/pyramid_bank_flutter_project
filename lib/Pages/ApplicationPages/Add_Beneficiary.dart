import 'package:flutter/material.dart';

import '../../Controllers/Validations.dart';
import '../../ApplicationConstants.dart' as constants;
import '../../Widgets/CustomWidget_Drawer.dart';
import '../../Widgets/CustomWidget_FormInput.dart';
import '../../Widgets/CustomWidget_FormButton.dart';

//Model
import '../../Models/BeneficiaryDTO.dart';

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

class AddBeneficiary extends StatefulWidget {
  final GlobalKey<FormState> beneficiaryFormKey = GlobalKey<FormState>();
  final PyramidDrawer drawer;

  AddBeneficiary({@required this.drawer});

  @override
  _AddBeneficiaryState createState() => _AddBeneficiaryState();
}

class _AddBeneficiaryState extends State<AddBeneficiary> {
  PyramidDrawer drawer;
  GlobalKey<FormState> formkey;
  BeneficiaryDTO beneficiaryDTO = BeneficiaryDTO();

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
        title: Text('ADD BENEFICIARY'),
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
                SizedBox(
                  height: constants.FormSpacing,
                ),
                FormInputWidget(
                    hintText: 'Account Name',
                    keyboardType: TextInputType.text,
                    callbackFunctions: accountNameValidation,
                    save: (String value) {
                      beneficiaryDTO.recipientAccountName = value;
                    }),
                SizedBox(
                  height: constants.FormSpacing,
                ),
                FormInputWidget(
                    hintText: 'Account Number',
                    keyboardType: TextInputType.number,
                    callbackFunctions: accountNumberValidation,
                    save: (String value) {
                      beneficiaryDTO.recipientAccountNumber = value;
                    }),
                SizedBox(
                  height: constants.FormSpacing,
                ),
                FormInputWidget(
                    hintText: 'NickName',
                    keyboardType: TextInputType.text,
                    callbackFunctions: nameValidation,
                    save: (String value) {
                      beneficiaryDTO.nickName = value;
                    }),
                SizedBox(
                  height: 30,
                ),
                FormButton(
                  formKey: formkey,
                  buttonText: 'ADD BENEFICIARY',
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
