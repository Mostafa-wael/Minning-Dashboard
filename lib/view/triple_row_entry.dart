import 'package:flutter/material.dart';
import 'package:minning/decoration/textfield_decoration.dart';

class TripleRowEntry extends StatelessWidget {
  const TripleRowEntry(
      {super.key,
      required this.label,
      required this.outputValue,
      required this.isInput,
      required this.width});

  final String label;
  final String outputValue;
  final bool isInput;
  final double width;

  // create a body widget
  Widget widgetBody(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.7,
          color: Color.fromRGBO(238, 232, 170, 0.856),
          child: Center(
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        SizedBox(
          height: 19,
          width: this.width * 0.7,
          child: TextFormField(
            initialValue: outputValue,
            enabled: isInput,
            textAlign: TextAlign.center,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: TextFieldDecoration.border(),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 4,
        ),
        SizedBox(
          height: 19,
          width: this.width * 0.7,
          child: TextFormField(
            initialValue: outputValue,
            enabled: isInput,
            textAlign: TextAlign.center,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: TextFieldDecoration.border(),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 4,
        ),
        SizedBox(
          height: 19,
          width: this.width * 0.7,
          child: TextFormField(
            initialValue: outputValue,
            enabled: isInput,
            textAlign: TextAlign.center,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: TextFieldDecoration.border(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return widgetBody(context);
  }
}
