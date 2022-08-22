import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:minning/view/row_entry.dart';
import 'package:minning/view/triple_row_entry.dart';

import '../controller/haulage_controller.dart';
import '../decoration/textfield_decoration.dart';
import 'column_entry.dart';

class TotalEquipmentWidget extends StatefulWidget {
  const TotalEquipmentWidget(
      {super.key, required HaulageController this.haulageController});
  final HaulageController haulageController;

  @override
  State<TotalEquipmentWidget> createState() =>
      _TotalEquipmentWidgetState(this.haulageController);
}

class _TotalEquipmentWidgetState extends State<TotalEquipmentWidget> {
  _TotalEquipmentWidgetState(this.haulageController);
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
              "Equipment phosphate",
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
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage('assets/images/cat.jpg'),
                    width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                    height: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                  ),
                  SizedBox(width: 10),
                  Container(
                    color: Color.fromRGBO(238, 232, 170, 0.856),
                    child: Text(
                      "Bulldozer",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4 / 4 * (1 / 2),
                child: SizedBox(
                    height: 19,
                    child: Text(
                        haulageController.BulldozerList[0].value.toString())),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4 / 4 * (1 / 2),
                child: SizedBox(
                  height: 19,
                  child: TextFormField(
                    initialValue:
                        haulageController.BulldozerList[0].value.toString(),
                    enabled: true,
                    textAlign: TextAlign.center,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: TextFieldDecoration.border(),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage('assets/images/cat.jpg'),
                    width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                    height: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                  ),
                  SizedBox(width: 10),
                  Container(
                    color: Color.fromRGBO(238, 232, 170, 0.856),
                    child: Text(
                      "Excavator",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4 / 4 * (1 / 2),
                child: SizedBox(
                    height: 19,
                    child: Text(
                        haulageController.BulldozerList[0].value.toString())),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4 / 4 * (1 / 2),
                child: SizedBox(
                  height: 19,
                  child: TextFormField(
                    initialValue:
                        haulageController.BulldozerList[0].value.toString(),
                    enabled: true,
                    textAlign: TextAlign.center,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: TextFieldDecoration.border(),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage('assets/images/cat.jpg'),
                    width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                    height: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                  ),
                  SizedBox(width: 10),
                  Container(
                    color: Color.fromRGBO(238, 232, 170, 0.856),
                    child: Text(
                      "Wheel Loader",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4 / 4 * (1 / 2),
                child: SizedBox(
                    height: 19,
                    child: Text(
                        haulageController.BulldozerList[0].value.toString())),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4 / 4 * (1 / 2),
                child: SizedBox(
                  height: 19,
                  child: TextFormField(
                    initialValue:
                        haulageController.BulldozerList[0].value.toString(),
                    enabled: true,
                    textAlign: TextAlign.center,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: TextFieldDecoration.border(),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage('assets/images/cat.jpg'),
                    width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                    height: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                  ),
                  SizedBox(width: 10),
                  Container(
                    color: Color.fromRGBO(238, 232, 170, 0.856),
                    child: Text(
                      "Dumper Trucks",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4 / 4 * (1 / 2),
                child: SizedBox(
                    height: 19,
                    child: Text(
                        haulageController.BulldozerList[0].value.toString())),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4 / 4 * (1 / 2),
                child: SizedBox(
                  height: 19,
                  child: TextFormField(
                    initialValue:
                        haulageController.BulldozerList[0].value.toString(),
                    enabled: true,
                    textAlign: TextAlign.center,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: TextFieldDecoration.border(),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage('assets/images/cat.jpg'),
                    width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                    height: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                  ),
                  SizedBox(width: 10),
                  Container(
                    color: Color.fromRGBO(238, 232, 170, 0.856),
                    child: Text(
                      "Actor 6 Wheels",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4 / 4 * (1 / 2),
                child: SizedBox(
                    height: 19,
                    child: Text(
                        haulageController.BulldozerList[0].value.toString())),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4 / 4 * (1 / 2),
                child: SizedBox(
                  height: 19,
                  child: TextFormField(
                    initialValue:
                        haulageController.BulldozerList[0].value.toString(),
                    enabled: true,
                    textAlign: TextAlign.center,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: TextFieldDecoration.border(),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
              )
            ],
          ),
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
