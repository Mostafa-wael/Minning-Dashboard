// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:minning/view/row_entry.dart';
import 'package:minning/view/triple_row_entry.dart';

import '../controller/haulage_controller.dart';
import 'column_entry.dart';

class EquipmentoverburdenWidget extends StatefulWidget {
  const EquipmentoverburdenWidget(
      {super.key, required HaulageController this.haulageController});

  final HaulageController haulageController;

  @override
  State<EquipmentoverburdenWidget> createState() =>
      _EquipmentoverburdenWidgetState(this.haulageController);
}

class _EquipmentoverburdenWidgetState extends State<EquipmentoverburdenWidget> {
  final HaulageController haulageController;

  _EquipmentoverburdenWidgetState(this.haulageController);

  // create a body widget
  Widget widgetBody(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 3 / 4 * 0.2,
            color: Color.fromRGBO(219, 165, 33, 0.856),
            child: Text(
              "Equipment overburden",
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
      Row(
        children: [
          SizedBox(
            width: 5,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage('assets/images/bulldozer.jpeg'),
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
                    child: Text(haulageController.equipmentOverburden.bulldozer
                        .toString())),
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
                    image: AssetImage('assets/images/excavator.jpeg'),
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
                    child: Text(haulageController.equipmentOverburden.excavator
                        .toString())),
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
                    image: AssetImage('assets/images/Wheel Loader.jpeg'),
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
                    child: Text(haulageController
                        .equipmentOverburden.wheelLoader
                        .toString())),
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
                    image: AssetImage('assets/images/Dumper-Trucks.jpeg'),
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
                    child: Text(haulageController
                        .equipmentOverburden.dumperTrucker
                        .toString())),
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
                    image: AssetImage('assets/images/Actros-6-Wheels.jpeg'),
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
                    child: Text(haulageController
                        .equipmentOverburden.actror6Wheels
                        .toString())),
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
