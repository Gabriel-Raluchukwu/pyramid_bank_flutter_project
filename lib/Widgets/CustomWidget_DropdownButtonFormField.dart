import 'package:flutter/material.dart';

class StringDropdownForm extends StatelessWidget {
  final String hint;
  final String errorMessage;
  final List<String> options;
  final Function save;

  StringDropdownForm(
      {@required this.hint,
      this.errorMessage = 'Invalid Input',
      @required this.options,
      @required this.save})
      : assert(options != null),
        assert(save != null);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.white54),
      child: DropdownButtonFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          hint: Text(hint),
          validator: (value) {
            if (value == null) {
              return errorMessage;
            }
          },
          items: options.map<DropdownMenuItem<String>>(
            (String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            },
          ).toList(),
          onSaved: (String value) {
            save(value);
          }),
    );
  }
}
