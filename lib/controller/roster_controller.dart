import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:minning/models/roster_model.dart';

class RosterController {
  Roster roster = Roster();

  RosterController() {
    roster.numOfDays = 0;
    roster.hourShift = 0;
  }

}
