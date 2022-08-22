import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:minning/models/roster_model.dart';

class RosterController {
  Roster roster = Roster();

  RosterController() {
    roster.numOfDays = 0;
    roster.hourShift = 0;
  }

  void calculateSrOverMcubed() {
    roster.srOverm3 = roster.numOfDays;
  }

  void calculateBesr() {
    roster.BESR = roster.hourShift;
  }
}
