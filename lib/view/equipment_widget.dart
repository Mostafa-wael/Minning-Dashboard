import 'package:flutter/material.dart';
import 'package:minning/controller/excavation_controller.dart';
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

  TextEditingController bulldozerTextEditingController =
      TextEditingController();
  TextEditingController excavatorTextEditingController =
      TextEditingController();
  TextEditingController wheelLoaderTextEditingController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    bulldozerTextEditingController.text =
        haulageController.BulldozerList[bulldozerIndex].value.toString();

    excavatorTextEditingController.text =
        haulageController.ExcavatorList[excavatorIndex].value.toString();

    wheelLoaderTextEditingController.text =
        haulageController.WheelLoaderList[wheelLoaderIndex].value.toString();
  }

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
          DropdownButtonHideUnderline(
              child: ButtonTheme(
            alignedDropdown: true,
            child: DropdownButton(
              value: haulageController.currentChosenBulldozer,
              items: [
                DropdownMenuItem(
                    value: 0,
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(
                              haulageController.BulldozerList[0].image),
                          width:
                              MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                          height:
                              MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                        ),
                      ],
                    )),
                DropdownMenuItem(
                    value: 1,
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(
                              haulageController.BulldozerList[1].image),
                          width:
                              MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                          height:
                              MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                        ),
                      ],
                    )),
                DropdownMenuItem(
                    value: 2,
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(
                              haulageController.BulldozerList[2].image),
                          width:
                              MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                          height:
                              MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                        ),
                      ],
                    )),
              ],
              onChanged: (value) {
                setState(() {
                  haulageController.currentChosenBulldozer = value as int;
                  bulldozerIndex = value as int;
                  bulldozerTextEditingController.text = haulageController
                      .BulldozerList[bulldozerIndex].value
                      .toString();
                });
              },
            ),
          )),
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
                controller: bulldozerTextEditingController,
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
          DropdownButtonHideUnderline(
              child: ButtonTheme(
            alignedDropdown: true,
            child: DropdownButton(
              value: haulageController.currentChosenExcavator,
              items: [
                DropdownMenuItem(
                    value: 0,
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(
                              haulageController.ExcavatorList[0].image),
                          width:
                              MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                          height:
                              MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                        ),
                      ],
                    )),
                DropdownMenuItem(
                    value: 1,
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(
                              haulageController.ExcavatorList[1].image),
                          width:
                              MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                          height:
                              MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                        ),
                      ],
                    )),
                DropdownMenuItem(
                    value: 2,
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(
                              haulageController.ExcavatorList[2].image),
                          width:
                              MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                          height:
                              MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                        ),
                      ],
                    )),
              ],
              onChanged: (value) {
                setState(() {
                  haulageController.currentChosenExcavator = value as int;
                  excavatorIndex = value as int;
                  excavatorTextEditingController.text = haulageController
                      .ExcavatorList[excavatorIndex].value
                      .toString();
                });
              },
            ),
          )),
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
                controller: excavatorTextEditingController,
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
          DropdownButtonHideUnderline(
              child: ButtonTheme(
            alignedDropdown: true,
            child: DropdownButton(
              value: haulageController.currentChosenWheelLoader,
              items: [
                DropdownMenuItem(
                    value: 0,
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(
                              haulageController.WheelLoaderList[0].image),
                          width:
                              MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                          height:
                              MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                        ),
                      ],
                    )),
                DropdownMenuItem(
                    value: 1,
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(
                              haulageController.WheelLoaderList[1].image),
                          width:
                              MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                          height:
                              MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                        ),
                      ],
                    )),
                DropdownMenuItem(
                    value: 2,
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(
                              haulageController.WheelLoaderList[2].image),
                          width:
                              MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                          height:
                              MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                        ),
                      ],
                    )),
              ],
              onChanged: (value) {
                setState(() {
                  haulageController.currentChosenWheelLoader = value as int;
                  wheelLoaderIndex = value as int;
                  wheelLoaderTextEditingController.text = haulageController
                      .WheelLoaderList[wheelLoaderIndex].value
                      .toString();
                });
              },
            ),
          )),
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
                controller: wheelLoaderTextEditingController,
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
