import 'package:flutter/material.dart';
import 'package:minning/excavation_widget.dart';
import 'package:minning/roster_widget.dart';
import 'package:minning/row_entry.dart';

class RightUpperWidget extends StatelessWidget {
  const RightUpperWidget({super.key});

  // create a body widget
  Widget widgetBody(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 1.5 / 4,
            // color: Colors.yellowAccent,
            child: Column(children: <Widget>[
              ExcavationWidget(),
              SizedBox(height: 20),
              RosterWidget()
            ]),
          )
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return widgetBody(context);
  }
}
