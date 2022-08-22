import 'package:flutter/material.dart';
import 'package:minning/controller/excavation_controller.dart';
import 'package:minning/view/row_entry.dart';

import '../decoration/textfield_decoration.dart';

class ExcavationWidget extends StatefulWidget {
  const ExcavationWidget({super.key, required this.excavationController});

  final ExcavationController excavationController;
  @override
  State<ExcavationWidget> createState() =>
      _ExcavationWidgetState(this.excavationController);
}

class _ExcavationWidgetState extends State<ExcavationWidget> {
  _ExcavationWidgetState(this.excavationController);

  final ExcavationController excavationController;
  int productionCostOverT = 0;

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
            color: Color.fromRGBO(238, 232, 170, 0.856),
            child: Text(
              "Mud/shale/clay",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.4 / 4,
            child: SizedBox(
              height: 19,
              child: TextFormField(
                initialValue:
                    excavationController.excavation.mud_shale_clay.toString(),
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
                      excavationController.excavation.mud_shale_clay =
                          int.parse(value);
                    } else {
                      excavationController.excavation.mud_shale_clay = 0;
                    }
                  });
                },
              ),
            ),
          )
        ],
      ),
      SizedBox(
        height: 3,
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
            color: Color.fromRGBO(238, 232, 170, 0.856),
            child: Text(
              "Marl",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.4 / 4,
            child: SizedBox(
              height: 19,
              child: TextFormField(
                initialValue: excavationController.excavation.marl.toString(),
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
                      excavationController.excavation.marl = int.parse(value);
                    } else {
                      excavationController.excavation.marl = 0;
                    }
                  });
                },
              ),
            ),
          )
        ],
      ),
      SizedBox(
        height: 3,
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
            color: Color.fromRGBO(238, 232, 170, 0.856),
            child: Text(
              "stone",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.4 / 4,
            child: SizedBox(
              height: 19,
              child: TextFormField(
                initialValue: excavationController.excavation.stone.toString(),
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
                      excavationController.excavation.stone = int.parse(value);
                    } else {
                      excavationController.excavation.stone = 0;
                    }
                  });
                },
              ),
            ),
          )
        ],
      ),
      SizedBox(
        height: 3,
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
            color: Color.fromRGBO(238, 232, 170, 0.856),
            child: Text(
              "phosphate",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.4 / 4,
            child: SizedBox(
              height: 19,
              child: TextFormField(
                initialValue:
                    excavationController.excavation.phosphate.toString(),
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
                      excavationController.excavation.phosphate =
                          int.parse(value);
                    } else {
                      excavationController.excavation.phosphate = 0;
                    }
                  });
                },
              ),
            ),
          )
        ],
      ),
      SizedBox(
        height: 3,
      ),
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Color.fromRGBO(238, 232, 170, 0.856),
            child: Text(
              "Revenue/t",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.4 / 4,
            child: SizedBox(
                height: 19,
                child: Text(
                  excavationController.excavation.revenueOverT.toString(),
                )),
          )
        ],
      ),
      SizedBox(
        height: 3,
      ),
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Color.fromRGBO(238, 232, 170, 0.856),
            child: Text(
              "Production cost/t",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.4 / 4,
            child: SizedBox(
                height: 19,
                child: Text(
                  excavationController.excavation.productionCostOverT
                      .toString(),
                )),
          )
        ],
      ),
      SizedBox(
        height: 3,
      ),
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Color.fromRGBO(238, 232, 170, 0.856),
            child: Text(
              "Stripping cost/t",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.4 / 4,
            child: SizedBox(
                height: 19,
                child: Text(
                  excavationController.excavation.strippingCostOverT.toString(),
                )),
          )
        ],
      ),
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
