import 'package:flutter/material.dart';
import 'package:minning/controller/haulage_controller.dart';
import 'package:minning/view/row_entry.dart';

import '../decoration/textfield_decoration.dart';

class EquipmentWidget extends StatefulWidget {
  const EquipmentWidget(
      {super.key, required HaulageController this.haulageController});

  final HaulageController haulageController;

  @override
  State<EquipmentWidget> createState() =>
      _EquipmentWidgetState(this.haulageController);
}

class _EquipmentWidgetState extends State<EquipmentWidget> {
  _EquipmentWidgetState(this.haulageController);
  final HaulageController haulageController;
  int bulldozerIndex = 0;
  int excavatorIndex = 0;
  int wheelLoaderIndex = 0;
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
              "Equipment",
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
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/images/cat.jpg'),
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
            height: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
          ),
          SizedBox(width: 10),
          Container(
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.7,
            color: Color.fromRGBO(238, 232, 170, 0.856),
            child: Text(
              "Bulldozer",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.7,
            child: SizedBox(
              height: 19,
              child: TextFormField(
                initialValue: haulageController
                    .BulldozerList[bulldozerIndex].value
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
                      haulageController.BulldozerList[bulldozerIndex].value =
                          int.parse(value);
                    } else {
                      haulageController.BulldozerList[bulldozerIndex].value = 0;
                    }
                  });
                },
              ),
            ),
          )
        ],
      ),
      SizedBox(
        height: 5,
      ),
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/images/cat.jpg'),
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
            height: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
          ),
          SizedBox(width: 10),
          Container(
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.7,
            color: Color.fromRGBO(238, 232, 170, 0.856),
            child: Text(
              "Excavator",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.7,
            child: SizedBox(
              height: 19,
              child: TextFormField(
                initialValue: haulageController
                    .ExcavatorList[excavatorIndex].value
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
                      haulageController.ExcavatorList[excavatorIndex].value =
                          int.parse(value);
                    } else {
                      haulageController.ExcavatorList[excavatorIndex].value = 0;
                    }
                  });
                },
              ),
            ),
          )
        ],
      ),
      SizedBox(
        height: 5,
      ),
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/images/cat.jpg'),
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
            height: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
          ),
          SizedBox(width: 10),
          Container(
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.7,
            color: Color.fromRGBO(238, 232, 170, 0.856),
            child: Text(
              "Wheel Loader",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.7,
            child: SizedBox(
              height: 19,
              child: TextFormField(
                initialValue: haulageController
                    .WheelLoaderList[wheelLoaderIndex].value
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
                      haulageController.WheelLoaderList[wheelLoaderIndex]
                          .value = int.parse(value);
                    } else {
                      haulageController
                          .WheelLoaderList[wheelLoaderIndex].value = 0;
                    }
                  });
                },
              ),
            ),
          )
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
