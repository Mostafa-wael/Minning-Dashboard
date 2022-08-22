import 'package:flutter/material.dart';
import 'package:minning/view/excavation_widget.dart';
import 'package:minning/view/roster_widget.dart';
import 'package:minning/view/row_entry.dart';

import '../controller/excavation_controller.dart';
import '../controller/roster_controller.dart';

class RightUpperWidget extends StatefulWidget {
  const RightUpperWidget(
      {super.key,
      required this.excavationController,
      required this.rosterController});

  final ExcavationController excavationController;
  final RosterController rosterController;
  @override
  State<RightUpperWidget> createState() =>
      _RightUpperWidgetState(this.excavationController, this.rosterController);
}

class _RightUpperWidgetState extends State<RightUpperWidget> {
  _RightUpperWidgetState(this.excavationController, this.rosterController);

  final ExcavationController excavationController;
  final RosterController rosterController;

  // create a body widget
  Widget widgetBody(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 1 / 4,
            // color: Colors.yellowAccent,
            child: Column(children: <Widget>[
              ExcavationWidget(
                excavationController: this.excavationController,
              ),
              SizedBox(height: 10),
              RosterWidget(rosterController: this.rosterController)
            ]),
          )
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return widgetBody(context);
  }
}
