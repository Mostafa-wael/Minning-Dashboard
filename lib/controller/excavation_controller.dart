import 'dart:ffi';
import 'dart:math';

import 'package:minning/models/excavation_model.dart';

class ExcavationController {
  Excavation excavation = Excavation();

  ExcavationController() {
    excavation.mud_shale_clay = 1143000;
    excavation.marl = 193200;
    excavation.stone = 249800;
    excavation.phosphate = 112700;
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
