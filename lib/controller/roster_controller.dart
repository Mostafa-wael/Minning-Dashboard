import 'dart:ffi';

import 'package:minning/models/roster_model.dart';

class RosterController {
  Roster? roster = Roster();

  RosterController() {
    roster?.numOfDays = 0;
    roster?.hourShift = 0;
  }

  void calculateSrOverMcubed() {
    roster?.srOverm3 = 300;
  }

  void calculateBesr() {
    roster?.BESR = 50;
  }
}
