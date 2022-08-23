import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:minning/models/roster_model.dart';

class RosterController {
  Roster roster = Roster();

  RosterController() {
    roster.numOfDays = 300;
    roster.hourShift = 10;
  }

}
