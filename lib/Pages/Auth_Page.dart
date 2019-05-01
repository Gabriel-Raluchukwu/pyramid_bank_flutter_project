import 'package:flutter/material.dart';

import '../ApplicationConstants.dart' as constant;

//Model
import '../Models/CustomerLogInDTO.dart';

class AuthenticationPage extends StatefulWidget {
  @override
  AuthenticationPageState createState() => AuthenticationPageState();
}

class AuthenticationPageState extends State<AuthenticationPage> {
  final GlobalKey<FormState> authPageFormKey = GlobalKey<FormState>();
  CustomerLogInDTO customerLogInDTO = CustomerLogInDTO();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/logInBackground.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.6), BlendMode.dstATop),
            ),
          ),
          padding: EdgeInsets.all(10.0),
          child: Form(
            key: authPageFormKey,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.account_balance,
                          size: 32,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: constant.FormSpacing,
                        ),
                        Text(
                          'PYRAMID BANK',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 70.0,
                    ),
                    UserNameTextInput(customerLogInDTO),
                    SizedBox(height: constant.FormSpacing),
                    PasswordTextInput(customerLogInDTO),
                    SizedBox(height: constant.FormSpacing),
                    SizedBox(
                      width: double.infinity,
                      child: LogInButton(
                        formKey: authPageFormKey,
                        customerLogInDTO: customerLogInDTO,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(5.0),
                            child: RegistrationOptions(
                              registrationName: 'Register',
                              //TODO: Move to associated controller
                              callbackFunction: () {
                                Navigator.pushNamed(context, '/SignUpPage1');
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(5.0),
                            child: RegistrationOptions(
                              registrationName: 'Create Account',
                              //TODO: Move to associated controller
                              callbackFunction: () {
                                Navigator.pushNamed(
                                    context, '/TermsAndConditions');
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class UserNameTextInput extends StatelessWidget {
  CustomerLogInDTO customerLogInDTO;

  UserNameTextInput(this.customerLogInDTO);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        labelText: 'UserName',
        isDense: true,
        border: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      validator: (value) {
        if (value.isEmpty) {
          return 'Please input your username';
        }
        if (!RegExp(r'^[a-zA-z0-9-]+$').hasMatch(value)) {
          return 'Username cannot contain special characters';
        }
        // if (!RegExp(r'').hasMatch(value)) {
        //   return 'Please Enter a valid Email Address';
        // }
      },
      onSaved: (String value) {
        customerLogInDTO.userName = value;
      },
    );
  }
}

class PasswordTextInput extends StatelessWidget {
  CustomerLogInDTO customerLogInDTO;

  PasswordTextInput(this.customerLogInDTO);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        labelText: 'Password',
        //labelStyle:
        border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black87,
            ),
            borderRadius: BorderRadius.circular(10.0)),
        isDense: true,
      ),
      validator: (value) {
        if (value.isEmpty) {
          return 'Please Input your password';
        }
        if (value.length < 8) {
          return 'Password length must be greater than 8 characters';
        }
        if (value.contains(' ')) {
          return 'Space Not allowed';
        }
      },
      onSaved: (String value) {
        customerLogInDTO.password = value;
      },
    );
  }
}

class LogInButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  CustomerLogInDTO customerLogInDTO;

  LogInButton({@required this.formKey, this.customerLogInDTO});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        side: BorderSide(),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          customerLogInDTO;
          //todo: Make Network call to authenticate and save JWT token in shared preferences

          Navigator.pushReplacementNamed(context, '/HomeScreen');
        }
      },
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Text('LOG IN'),
      ),
    );
  }
}

class RegistrationOptions extends StatelessWidget {
  final String registrationName;

  final VoidCallback callbackFunction;

  RegistrationOptions(
      {@required this.registrationName, @required this.callbackFunction});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Text(
          registrationName,
        ),
      ),
      onPressed: callbackFunction,
    );
  }
}
