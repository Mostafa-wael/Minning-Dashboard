import 'package:flutter/material.dart';
import 'package:minning/row_entry.dart';

class RosterWidget extends StatelessWidget {
  const RosterWidget({super.key});

  // create a body widget
  Widget widgetBody(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width * 1 / 4,
        height: MediaQuery.of(context).size.width * 0.025,
        color: Color.fromRGBO(189, 183, 107, 0.856),
        child: Text(
          "Roster",
          textAlign: TextAlign.center,
        ),
      ),
      SizedBox(
        height: 5,
      ),
      RowEntry(label: "Number days", outputValue: "", isInput: true),
      SizedBox(
        height: 5,
      ),
      RowEntry(label: "Hour shift", outputValue: "", isInput: true),
      SizedBox(
        height: 5,
      ),
      RowEntry(label: "SR/m3", outputValue: "10", isInput: false),
      SizedBox(
        height: 5,
      ),
      RowEntry(label: "BESR", outputValue: "50", isInput: false),
      SizedBox(
        height: 5,
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return widgetBody(context);
  }
}
