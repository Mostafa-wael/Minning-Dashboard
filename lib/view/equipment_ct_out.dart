import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:minning/view/row_entry.dart';
import 'package:minning/view/triple_row_entry.dart';

import 'column_entry.dart';

class EquipmentCtOutputWidget extends StatelessWidget {
  const EquipmentCtOutputWidget({super.key});

  // create a body widget
  Widget widgetBody(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 2.5 / 4 * (1 / 8),
            color: Color.fromRGBO(219, 165, 33, 0.856),
            child: Text(
              "Equipment C.T (m3/h)",
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
      Row(
        children: [
          SizedBox(
            height: 5,
          ),
          ColumnEntry(
              label: "Dumper Trucks",
              outputValue: "",
              isInput: false,
              width: MediaQuery.of(context).size.width * 0.4 / 4 * (1 / 2),
              icon: 'assets/images/cat.jpg'),
          SizedBox(
            width: 15,
          ),
          ColumnEntry(
              label: "Actor 6 Wheels",
              outputValue: "",
              isInput: false,
              width: MediaQuery.of(context).size.width * 0.4 / 4 * (1 / 2),
              icon: 'assets/images/cat.jpg'),
          SizedBox(
            width: 15,
          ),
          ColumnEntry(
              label: "Actor 6 Wheels (ph)",
              outputValue: "",
              isInput: false,
              width: MediaQuery.of(context).size.width * 0.4 / 4 * (1 / 2),
              icon: 'assets/images/cat.jpg'),
          SizedBox(
            width: 15,
          ),
        ],
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return widgetBody(context);
  }
}
