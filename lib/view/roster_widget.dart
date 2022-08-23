import 'package:flutter/material.dart';
import 'package:minning/controller/roster_controller.dart';
import 'package:minning/view/row_entry.dart';

import '../decoration/textfield_decoration.dart';

class RosterWidget extends StatefulWidget {
  const RosterWidget(
      {super.key, required RosterController this.rosterController});
  final RosterController rosterController;
  @override
  State<RosterWidget> createState() =>
      _RosterWidgetState(this.rosterController);
}

class _RosterWidgetState extends State<RosterWidget> {
  _RosterWidgetState(this.rosterController);
  final RosterController rosterController;

  // create a body widget
  Widget widgetBody(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width * 1 / 4 * 0.75,
        height: MediaQuery.of(context).size.width * 0.025,
        color: Color.fromRGBO(189, 183, 107, 0.856),
        child: Text(
          "Roster",
          textAlign: TextAlign.center,
        ),
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
            child: Text(
              "Number days",
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
                initialValue: rosterController.roster.numOfDays.toString(),
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
                    if (value.isNotEmpty) {
                      rosterController.roster.numOfDays = int.parse(value);
                    } else {
                      rosterController.roster.numOfDays = 0;
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
            width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.7,
            color: Color.fromRGBO(238, 232, 170, 0.856),
            child: Text(
              "Hour shift",
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
                initialValue: rosterController.roster.hourShift.toString(),
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
                      rosterController.roster.hourShift = int.parse(value);
                    } else {
                      rosterController.roster.hourShift = 0;
                    }
                  });
                },
              ),
            ),
          )
        ],
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return widgetBody(context);
  }
}
