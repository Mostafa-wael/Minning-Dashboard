import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:minning/controller/excavation_controller.dart';
import 'package:minning/controller/roster_controller.dart';
import 'package:minning/models/bulldozer_model.dart';
import 'package:minning/models/equipment_ct_mdoel.dart';
import 'package:minning/models/equipment_overburden_model.dart';
import 'package:minning/models/equipment_phosphate_model.dart';
import 'package:minning/models/excavator_model.dart';
import 'package:minning/models/output_model.dart';
import 'package:minning/models/total_equipment_model.dart';
import 'package:minning/models/wheelloader_model.dart';

import '../models/equipment_ct_input_model.dart';

class HaulageController extends GetxController {
  var BulldozerList = <Bulldozer>[];
  var WheelLoaderList = <WheelLoader>[];
  var ExcavatorList = <Excavator>[];
  int currentChosenBulldozer = 0,
      currentChosenWheelLoader = 0,
      currentChosenExcavator = 0;

  EquipmentCTInput equipmentCTInput = EquipmentCTInput();

  EQuipmentCT eQuipmentCT = EQuipmentCT();
  EquipmentOverburden equipmentOverburden = EquipmentOverburden();
  EquipmentPhosphate equipmentPhosphate = EquipmentPhosphate();
  TotalEquipment totalEquipment = TotalEquipment();

  Outputs output = Outputs();

  final BulldozerImagesList = <String>[
    'assets/images/cat.jpg',
    'assets/images/cat.jpg',
    'assets/images/cat.jpg'
  ];
  final BulldozerNamesList = <String>[
    'D10T',
    'D11T',
    'D12T',
  ];
  final BulldozerValuesList = <int>[
    250,
    300,
    350,
  ];

  final ExcavatorImagesList = <String>[
    'assets/images/cat.jpg',
    'assets/images/cat.jpg',
    'assets/images/cat.jpg'
  ];
  final ExcavatorNamesList = <String>[
    'Doosan300',
    'Doosan350',
    'Doosan400',
  ];
  final ExcavatorValuesList = <int>[
    30,
    35,
    40,
  ];

  final WheelLoaderImagesList = <String>[
    'assets/images/cat.jpg',
    'assets/images/cat.jpg',
    'assets/images/cat.jpg'
  ];
  final WheelLoaderNamesList = <String>[
    '980H',
    '980H1',
    '980H2',
  ];
  final WheelLoaderValuesList = <int>[
    200,
    250,
    300,
  ];

  HaulageController() {
    for (var i = 0; i < 3; i++) {
      Bulldozer bulldozer = Bulldozer();
      bulldozer.image = BulldozerImagesList[i];
      bulldozer.name = BulldozerNamesList[i];
      bulldozer.value = BulldozerValuesList[i];

      BulldozerList.add(bulldozer);
    }
    for (var i = 0; i < 3; i++) {
      WheelLoader wheelLoader = WheelLoader();
      wheelLoader.image = WheelLoaderImagesList[i];
      wheelLoader.name = WheelLoaderNamesList[i];
      wheelLoader.value = WheelLoaderValuesList[i];

      WheelLoaderList.add(wheelLoader);
    }
    for (var i = 0; i < 3; i++) {
      Excavator excavator = Excavator();
      excavator.image = ExcavatorImagesList[i];
      excavator.name = ExcavatorNamesList[i];
      excavator.value = ExcavatorValuesList[i];

      ExcavatorList.add(excavator);
    }
  }

  void calculateEquipmentCT() {
    eQuipmentCT.actros6Wheels = 60.0 /
        (equipmentCTInput.actros6Wheels.loadingAndUnloadingTime +
            equipmentCTInput.actros6Wheels.timeToGoAndBack) *
        equipmentCTInput.actros6Wheels.capacity;

    eQuipmentCT.actros6WheelsPh = 60.0 /
        (equipmentCTInput.actros6WheelsPh.loadingAndUnloadingTime +
            equipmentCTInput.actros6WheelsPh.timeToGoAndBack) *
        equipmentCTInput.actros6WheelsPh.capacity;

    eQuipmentCT.dumperTrucker = 60.0 /
        (equipmentCTInput.dumperTrucks.loadingAndUnloadingTime +
            equipmentCTInput.dumperTrucks.timeToGoAndBack) *
        equipmentCTInput.dumperTrucks.capacity;
  }

  void calculateEquipmentOverburden(ExcavationController excavationController,
      RosterController rosterController) {
    equipmentOverburden.bulldozer =
        (excavationController.excavation.mud_shale_clay +
                excavationController.excavation.marl * 1.0) /
            (rosterController.roster.numOfDays *
                rosterController.roster.hourShift *
                BulldozerList[currentChosenBulldozer].value);

    equipmentOverburden.excavator =
        (excavationController.excavation.stone * 1.0) /
            (rosterController.roster.numOfDays *
                rosterController.roster.hourShift *
                ExcavatorList[currentChosenExcavator].value);

    equipmentOverburden.wheelLoader = ((excavationController.excavation.marl +
                excavationController.excavation.mud_shale_clay +
                excavationController.excavation.stone) *
            1.0) /
        (rosterController.roster.numOfDays *
            rosterController.roster.hourShift *
            WheelLoaderList[currentChosenWheelLoader].value);

    equipmentOverburden.actror6Wheels =
        (excavationController.excavation.mud_shale_clay * 1.0) /
            (rosterController.roster.numOfDays *
                rosterController.roster.hourShift *
                eQuipmentCT.actros6Wheels);

    equipmentOverburden.dumperTrucker = (excavationController.excavation.stone +
            excavationController.excavation.marl * 1.0) /
        (rosterController.roster.numOfDays *
            rosterController.roster.hourShift *
            eQuipmentCT.dumperTrucker);
  }

  void calculateEquipmentPhosphate(ExcavationController excavationController,
      RosterController rosterController) {
    equipmentPhosphate.excavator = (excavationController.excavation.phosphate) /
        (rosterController.roster.numOfDays *
            rosterController.roster.hourShift *
            ExcavatorList[currentChosenExcavator].value);

    equipmentPhosphate.actror6Wheels =
        (excavationController.excavation.phosphate) /
            (rosterController.roster.numOfDays *
                rosterController.roster.hourShift *
                eQuipmentCT.actros6WheelsPh);

    equipmentPhosphate.wheelLoader =
        (excavationController.excavation.phosphate) /
            (rosterController.roster.numOfDays *
                rosterController.roster.hourShift *
                WheelLoaderList[currentChosenWheelLoader].value);
  }

  void calculateTotalEquipment() {
    totalEquipment.actror6Wheels =
        equipmentOverburden.actror6Wheels + equipmentPhosphate.actror6Wheels;

    totalEquipment.bulldozer = equipmentOverburden.bulldozer;

    totalEquipment.dumperTrucker = equipmentOverburden.dumperTrucker;

    totalEquipment.excavator =
        equipmentOverburden.excavator + equipmentPhosphate.excavator;

    totalEquipment.wheelLoader =
        equipmentOverburden.wheelLoader + equipmentPhosphate.wheelLoader;

    // output.bulldozer = (totalEquipment.bulldozer.ceil().toInt());
    // output.dumperTrucker = (totalEquipment.dumperTrucker.ceil().toInt());
    // output.actror6Wheels = (totalEquipment.actror6Wheels.ceil().toInt());
    // output.excavator = (totalEquipment.excavator.ceil().toInt());
    // output.wheelLoader = (totalEquipment.wheelLoader.ceil().toInt());
  }
}
