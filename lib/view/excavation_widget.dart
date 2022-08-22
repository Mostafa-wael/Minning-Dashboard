import 'package:flutter/material.dart';
import 'package:minning/view/row_entry.dart';

class ExcavationWidget extends StatelessWidget {
  const ExcavationWidget({super.key});

  // create a body widget
  Widget widgetBody(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width * 1 / 4 * 0.75,
        height: MediaQuery.of(context).size.width * 0.025,
        color: Color.fromRGBO(189, 183, 107, 0.856),
        child: Text(
          "Excavation",
          textAlign: TextAlign.center,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4 / 4,
            color: Color.fromRGBO(219, 165, 33, 0.856),
            child: Text(
              "Materials",
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.4 / 4,
            color: Color.fromRGBO(219, 165, 33, 0.856),
            child: Text(
              "Quantity/m3",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 5,
      ),
      RowEntry(
          label: "Mud/shale/clay",
          outputValue: "",
          isInput: true,
          width: MediaQuery.of(context).size.width * 0.4 / 4,
          icon: 'assets/images/cat.jpg'),
      SizedBox(
        height: 3,
      ),
      RowEntry(
          label: "Marl",
          outputValue: "",
          isInput: true,
          width: MediaQuery.of(context).size.width * 0.4 / 4,
          icon: 'assets/images/cat.jpg'),
      SizedBox(
        height: 3,
      ),
      RowEntry(
          label: "stone",
          outputValue: "",
          isInput: true,
          width: MediaQuery.of(context).size.width * 0.4 / 4,
          icon: 'assets/images/cat.jpg'),
      SizedBox(
        height: 3,
      ),
      RowEntry(
          label: "phosphate",
          outputValue: "",
          isInput: true,
          width: MediaQuery.of(context).size.width * 0.4 / 4,
          icon: 'assets/images/cat.jpg'),
      SizedBox(
        height: 3,
      ),
      RowEntry(
          label: "Revenue/t",
          outputValue: "5",
          isInput: false,
          width: MediaQuery.of(context).size.width * 0.4 / 4),
      SizedBox(
        height: 3,
      ),
      RowEntry(
          label: "Production cost/t",
          outputValue: "10",
          isInput: false,
          width: MediaQuery.of(context).size.width * 0.4 / 4),
      SizedBox(
        height: 3,
      ),
      RowEntry(
          label: "Stripping cost/t",
          outputValue: "50",
          isInput: false,
          width: MediaQuery.of(context).size.width * 0.4 / 4),
      SizedBox(
        height: 3,
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return widgetBody(context);
  }
}
