import 'package:flutter/material.dart';

class RowEntry extends StatelessWidget {
  const RowEntry(
      {super.key,
      required this.label,
      required this.outputValue,
      required this.isInput});

  final String label;
  final String outputValue;
  final bool isInput;

  // create a body widget
  Widget widgetBody(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.4 / 4,
          color: Color.fromRGBO(238, 232, 170, 0.856),
          child: Text(
            label,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.4 / 4,
          child: SizedBox(
            height: 19,
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
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return widgetBody(context);
  }
}
