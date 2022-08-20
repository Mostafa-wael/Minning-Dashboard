import 'package:flutter/material.dart';
import 'package:minning/row_entry.dart';

class EquipmentCtWidget extends StatelessWidget {
  const EquipmentCtWidget({super.key});

  // create a body widget
  Widget widgetBody(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 2.5 / 4 * (1 / 9),
            color: Color.fromRGBO(219, 165, 33, 0.856),
            child: Text(
              "Equipment C.T",
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 2.5 / 4 * (1 / 9),
            color: Color.fromRGBO(219, 165, 33, 0.856),
            child: Text(
              "m3/h",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 5,
      ),
      RowEntry(
          label: "Capacity:m3",
          outputValue: "",
          isInput: true,
          width: MediaQuery.of(context).size.width * 0.4 / 4 * (1 / 2)),
      SizedBox(
        height: 5,
      ),
      RowEntry(
          label: "Time to go and back",
          outputValue: "",
          isInput: true,
          width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.7),
      SizedBox(
        height: 5,
      ),
      RowEntry(
          label: "Loading and unloading time",
          outputValue: "",
          isInput: true,
          width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.7),
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
