import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:minning/row_entry.dart';
import 'package:minning/triple_row_entry.dart';

class EquipmentCtWidget extends StatelessWidget {
  const EquipmentCtWidget({super.key});

  // create a body widget
  Widget widgetBody(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        // mainAxisSize: MainAxisSize.max,
        // mainAxisAlignment: MainAxisAlignment.center,
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
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/cat.jpg'),
            radius: MediaQuery.of(context).size.width * 0.4 / 4 * (1 / 2) * 0.2,
          ),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/cat.jpg'),
            radius: MediaQuery.of(context).size.width * 0.4 / 4 * (1 / 2) * 0.2,
          ),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/cat.jpg'),
            radius: MediaQuery.of(context).size.width * 0.4 / 4 * (1 / 2) * 0.2,
          ),
        ],
      ),
      SizedBox(
        height: 5,
      ),
      TripleRowEntry(
          label: "Capacity:m3",
          outputValue: "",
          isInput: true,
          width: MediaQuery.of(context).size.width * 0.4 / 4 * (1 / 2)),
      SizedBox(
        height: 5,
      ),
      TripleRowEntry(
          label: "Time to go and back",
          outputValue: "",
          isInput: true,
          width: MediaQuery.of(context).size.width * 0.4 / 4 * (1 / 2)),
      SizedBox(
        height: 5,
      ),
      TripleRowEntry(
          label: "Loading and unloading time",
          outputValue: "",
          isInput: true,
          width: MediaQuery.of(context).size.width * 0.4 / 4 * (1 / 2)),
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
