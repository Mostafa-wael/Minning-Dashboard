import 'dart:ffi';
import 'dart:math';

import 'package:minning/models/excavation_model.dart';

class ExcavationController {
  Excavation excavation = Excavation();

  ExcavationController() {
    excavation.mud_shale_clay = 0;
    excavation.marl = 0;
    excavation.stone = 0;
    excavation.phosphate = 0;
  }

  void calculateRevenue() {
    excavation.revenueOverT = excavation.phosphate;
  }

  void calculateProductionCost() {
    excavation.productionCostOverT = excavation.marl - excavation.stone;
  }

  void calculateStrippingCost() {
    var random = new Random();
    excavation.strippingCostOverT = excavation.mud_shale_clay;
  }
}
