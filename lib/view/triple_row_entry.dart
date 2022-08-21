import 'package:flutter/material.dart';

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
          width: width,
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
                borderSide: BorderSide(width: 1, color: Colors.black),
              ),
            ),
          ),
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
                borderSide: BorderSide(width: 1, color: Colors.black),
              ),
            ),
          ),
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
                borderSide: BorderSide(width: 1, color: Colors.black),
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