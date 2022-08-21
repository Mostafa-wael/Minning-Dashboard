import 'package:flutter/material.dart';
import 'package:minning/view/excavation_widget.dart';
import 'package:minning/view/roster_widget.dart';
import 'package:minning/view/row_entry.dart';

class RightUpperWidget extends StatefulWidget {
  const RightUpperWidget({super.key});

  @override
  State<RightUpperWidget> createState() => _RightUpperWidgetState();
}

class _RightUpperWidgetState extends State<RightUpperWidget> {
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
