import 'dart:ffi';

import 'package:minning/models/excavation_model.dart';

class ExcavationController {
  Excavation? excavation = Excavation();

  ExcavationController() {
    excavation?.mud_shale_clay = 0;
    excavation?.marl = 0;
    excavation?.stone = 0;
    excavation?.phosphate = 0;
  }

  void calculateRevenue() {
    excavation?.revenueOverT = 50;
  }

  void calculateProductionCost() {
    excavation?.productionCostOverT = 5666;
  }

  void calculateStrippingCost() {
    excavation?.strippingCostOverT = 645620;
  }
}
