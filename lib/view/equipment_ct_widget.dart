import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:minning/controller/haulage_controller.dart';
import 'package:minning/view/row_entry.dart';
import 'package:minning/view/triple_row_entry.dart';

import '../decoration/textfield_decoration.dart';

class EquipmentCtWidget extends StatefulWidget {
  const EquipmentCtWidget(
      {super.key, required HaulageController this.haulageController});

  final HaulageController haulageController;
  @override
  State<EquipmentCtWidget> createState() =>
      _EquipmentCtWidgetState(this.haulageController);
}

class _EquipmentCtWidgetState extends State<EquipmentCtWidget> {
  _EquipmentCtWidgetState(this.haulageController);

  final HaulageController haulageController;
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
              "Equipment C.T",
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Image(
            image: AssetImage('assets/images/cat.jpg'),
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
            height: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.1,
          ),
          Image(
            image: AssetImage('assets/images/cat.jpg'),
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
            height: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.1,
          ),
          Image(
            image: AssetImage('assets/images/cat.jpg'),
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
            height: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
          ),
        ],
      ),
      SizedBox(
        height: 5,
      ),
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.7,
            color: Color.fromRGBO(238, 232, 170, 0.856),
            child: Center(
              child: Text(
                "Capacity:m3",
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
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.5 * 0.7,
            child: TextFormField(
              initialValue: haulageController
                  .equipmentCTInput.dumperTrucks.capacity
                  .toString(),
              enabled: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: TextFieldDecoration.border(),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  if (!value.isEmpty) {
                    haulageController.equipmentCTInput.dumperTrucks.capacity =
                        int.parse(value);
                  } else {
                    haulageController.equipmentCTInput.dumperTrucks.capacity =
                        0;
                  }
                });
              },
            ),
          ),
          SizedBox(
            width: 4,
          ),
          SizedBox(
            height: 19,
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.5 * 0.7,
            child: TextFormField(
              initialValue: haulageController
                  .equipmentCTInput.actros6Wheels.capacity
                  .toString(),
              enabled: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: TextFieldDecoration.border(),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  if (!value.isEmpty) {
                    haulageController.equipmentCTInput.actros6Wheels.capacity =
                        int.parse(value);
                  } else {
                    haulageController.equipmentCTInput.actros6Wheels.capacity =
                        0;
                  }
                });
              },
            ),
          ),
          SizedBox(
            width: 4,
          ),
          SizedBox(
            height: 19,
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.5 * 0.7,
            child: TextFormField(
              initialValue: haulageController
                  .equipmentCTInput.actros6WheelsPh.capacity
                  .toString(),
              enabled: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: TextFieldDecoration.border(),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  if (!value.isEmpty) {
                    haulageController.equipmentCTInput.actros6WheelsPh
                        .capacity = int.parse(value);
                  } else {
                    haulageController
                        .equipmentCTInput.actros6WheelsPh.capacity = 0;
                  }
                });
              },
            ),
          ),
        ],
      ),
      SizedBox(
        height: 5,
      ),
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.7,
            color: Color.fromRGBO(238, 232, 170, 0.856),
            child: Center(
              child: Text(
                "Time to go and back",
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
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.5 * 0.7,
            child: TextFormField(
              initialValue: haulageController
                  .equipmentCTInput.dumperTrucks.timeToGoAndBack
                  .toString(),
              enabled: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: TextFieldDecoration.border(),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  if (!value.isEmpty) {
                    haulageController.equipmentCTInput.dumperTrucks
                        .timeToGoAndBack = int.parse(value);
                  } else {
                    haulageController
                        .equipmentCTInput.dumperTrucks.timeToGoAndBack = 0;
                  }
                });
              },
            ),
          ),
          SizedBox(
            width: 4,
          ),
          SizedBox(
            height: 19,
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.5 * 0.7,
            child: TextFormField(
              initialValue: haulageController
                  .equipmentCTInput.actros6Wheels.timeToGoAndBack
                  .toString(),
              enabled: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: TextFieldDecoration.border(),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  if (!value.isEmpty) {
                    haulageController.equipmentCTInput.actros6Wheels
                        .timeToGoAndBack = int.parse(value);
                  } else {
                    haulageController
                        .equipmentCTInput.actros6Wheels.timeToGoAndBack = 0;
                  }
                });
              },
            ),
          ),
          SizedBox(
            width: 4,
          ),
          SizedBox(
            height: 19,
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.5 * 0.7,
            child: TextFormField(
              initialValue: haulageController
                  .equipmentCTInput.actros6WheelsPh.timeToGoAndBack
                  .toString(),
              enabled: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: TextFieldDecoration.border(),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  if (!value.isEmpty) {
                    haulageController.equipmentCTInput.actros6WheelsPh
                        .timeToGoAndBack = int.parse(value);
                  } else {
                    haulageController
                        .equipmentCTInput.actros6WheelsPh.timeToGoAndBack = 0;
                  }
                });
              },
            ),
          ),
        ],
      ),
      SizedBox(
        height: 5,
      ),
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.7,
            color: Color.fromRGBO(238, 232, 170, 0.856),
            child: Center(
              child: Text(
                "Loading and unloading time",
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
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.5 * 0.7,
            child: TextFormField(
              initialValue: haulageController
                  .equipmentCTInput.dumperTrucks.loadingAndUnloadingTime
                  .toString(),
              enabled: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: TextFieldDecoration.border(),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  if (!value.isEmpty) {
                    haulageController.equipmentCTInput.dumperTrucks
                        .loadingAndUnloadingTime = int.parse(value);
                  } else {
                    haulageController.equipmentCTInput.dumperTrucks
                        .loadingAndUnloadingTime = 0;
                  }
                });
              },
            ),
          ),
          SizedBox(
            width: 4,
          ),
          SizedBox(
            height: 19,
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.5 * 0.7,
            child: TextFormField(
              initialValue: haulageController
                  .equipmentCTInput.actros6Wheels.loadingAndUnloadingTime
                  .toString(),
              enabled: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: TextFieldDecoration.border(),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  if (!value.isEmpty) {
                    haulageController.equipmentCTInput.actros6Wheels
                        .loadingAndUnloadingTime = int.parse(value);
                  } else {
                    haulageController.equipmentCTInput.actros6Wheels
                        .loadingAndUnloadingTime = 0;
                  }
                });
              },
            ),
          ),
          SizedBox(
            width: 4,
          ),
          SizedBox(
            height: 19,
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.5 * 0.7,
            child: TextFormField(
              initialValue: haulageController
                  .equipmentCTInput.actros6WheelsPh.loadingAndUnloadingTime
                  .toString(),
              enabled: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: TextFieldDecoration.border(),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  if (!value.isEmpty) {
                    haulageController.equipmentCTInput.actros6WheelsPh
                        .loadingAndUnloadingTime = int.parse(value);
                  } else {
                    haulageController.equipmentCTInput.actros6WheelsPh
                        .loadingAndUnloadingTime = 0;
                  }
                });
              },
            ),
          ),
        ],
      ),
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
