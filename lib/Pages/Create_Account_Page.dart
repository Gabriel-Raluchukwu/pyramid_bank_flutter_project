import 'package:flutter/material.dart';

import '../Models/_Enumerations.dart' as Enum;
import '../Controllers/Validations.dart';
import '../Widgets/CustomWidget_FormInput.dart';
import '../Widgets/CustomWidget_FormButton.dart';
import '../ApplicationConstants.dart' as constants;
import '../Widgets/CustomWidget_DropdownButtonFormField.dart';
import '../Controllers/Customer_Account_Controller.dart';

//Model
import '../Models/CustomerAccountDTO.dart';

List<ValidationFunctions> nameValidation = [
  validateEmpty,
  validateCharacters,
];
List<ValidationFunctions> emailValidation = [
  validateEmpty,
  validateEmail,
];

List<ValidationFunctions> phoneNumberValidation = [
  validateEmpty,
  validatePhoneNumber,
];

List<ValidationFunctions> bvnValidation = [
  validateEmpty,
  validateNumbers,
  validateBVNNumber,
];
List<ValidationFunctions> transactionPinValidation = [
  validateEmpty,
  validateNumbers,
  validateTransactionPin,
];

class CreateCustomerAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CREATE ACCOUNT'),
        iconTheme: IconThemeData(
          color: Colors.grey[900],
        ),
      ),
      // backgroundColor: Theme.of(context).accentColor,
      body: CustomerAccountPage(),
    );
  }
}

class CustomerAccountPage extends StatefulWidget {
  final GlobalKey<FormState> createCustomerAccountFormKey =
      GlobalKey<FormState>();

  @override
  _CreateCustomerAccountPageState createState() =>
      _CreateCustomerAccountPageState();
}

class _CreateCustomerAccountPageState extends State<CustomerAccountPage> {
  GlobalKey<FormState> customerAccountKey;
  CustomerAccountDTO customerAccountDTO = CustomerAccountDTO();

  @override
  void initState() {
    super.initState();
    customerAccountKey = widget.createCustomerAccountFormKey;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/logInBackground.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.dstATop),
          ),
        ),
        padding: EdgeInsets.all(10.0),
        child: Form(
          key: customerAccountKey,
          child: ListView(
            children: <Widget>[
              FormInputWidget(
                hintText: 'Surname',
                callbackFunctions: nameValidation,
                keyboardType: TextInputType.text,
                save: (String value) {
                  customerAccountDTO.surname = value;
                },
              ),
              SizedBox(
                height: constants.FormSpacing,
              ),
              FormInputWidget(
                hintText: 'First Name',
                callbackFunctions: nameValidation,
                keyboardType: TextInputType.text,
                save: (String value) {
                  customerAccountDTO.firstName = value;
                },
              ),
              SizedBox(
                height: constants.FormSpacing,
              ),
              FormInputWidget(
                hintText: 'Other Name',
                callbackFunctions: nameValidation,
                keyboardType: TextInputType.text,
                save: (String value) {
                  customerAccountDTO.otherNames = value;
                },
              ),
              SizedBox(
                height: constants.FormSpacing,
              ),
              FormInputWidget(
                hintText: 'E-mail',
                callbackFunctions: emailValidation,
                keyboardType: TextInputType.emailAddress,
                save: (String value) {
                  customerAccountDTO.email = value;
                },
              ),
              SizedBox(
                height: constants.FormSpacing,
              ),
              FormInputWidget(
                hintText: 'Phone Number',
                callbackFunctions: phoneNumberValidation,
                keyboardType: TextInputType.phone,
                save: (String value) {
                  customerAccountDTO.phoneNumber = value;
                },
              ),
              SizedBox(
                height: constants.FormSpacing,
              ),
              StringDropdownForm(
                hint: 'Select Account Type',
                options: <String>['Savings', 'Current'],
                errorMessage: 'Please select an Account Type',
                save: (String value) {},
              ),
              SizedBox(
                height: constants.FormSpacing,
              ),
              FormInputWidget(
                hintText: 'BVN Number',
                callbackFunctions: bvnValidation,
                keyboardType: TextInputType.number,
                save: (String value) {
                  customerAccountDTO.bvnNumber = value;
                },
              ),
              SizedBox(
                height: constants.FormSpacing,
              ),
              FormInputWidget(
                hintText: 'TransactionPin',
                callbackFunctions: transactionPinValidation,
                keyboardType: TextInputType.number,
                save: (String value) {
                  customerAccountDTO.transactionPin = int.parse(value);
                },
              ),
              SizedBox(
                height: 30.0,
              ),
              // ConfirmTransactionPin(
              //   hintText: 'Confirm Transaction Pin',
              //   comparePin: ,
              // ),
              FormButton(
                formKey: customerAccountKey,
                buttonText: 'CREATE ACCOUNT',
                function: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ConfirmTransactionPin extends FormInputWidget {
  final String hintText;
  final String comparePin;
  //final List<ValidationFunctions> callbackFunctions;
  final TextInputType keyboardType;

  ConfirmTransactionPin(
      {@required this.hintText,
      @required this.comparePin,
      //  @required this.callbackFunctions,
      this.keyboardType = TextInputType.text});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: hintText,
      ),
      validator: (value) {
        // for (var i in callbackFunctions) {
        //   return i(value, hintText);
        // }
        if (value != comparePin) {
          return 'Transaction Pins do not Match';
        }
      },
    );
  }
}
