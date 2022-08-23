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
import 'package:minning/models/total_equipment_model.dart';
import 'package:minning/models/wheelloader_model.dart';

import '../models/equipment_ct_input_model.dart';

class HaulageController extends GetxController {
  var BulldozerList = <Bulldozer>[];
  var WheelLoaderList = <WheelLoader>[];
  var ExcavatorList = <Excavator>[];

  EquipmentCTInput equipmentCTInput = EquipmentCTInput();

  EQuipmentCT eQuipmentCT = EQuipmentCT();
  EquipmentOverburden equipmentOverburden = EquipmentOverburden();
  EquipmentPhosphate equipmentPhosphate = EquipmentPhosphate();
  TotalEquipment totalEquipment = TotalEquipment();

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
    Random rand = Random();
    eQuipmentCT.actros6Wheels = rand.nextInt(1000);
    eQuipmentCT.actros6WheelsPh = rand.nextInt(1000);
    eQuipmentCT.dumperTrucker = rand.nextInt(1000);
  }

  void calculateEquipmentOverburden(ExcavationController excavationController,
      RosterController rosterController) {
    equipmentOverburden.bulldozer =
        (excavationController.excavation.mud_shale_clay +
                excavationController.excavation.marl * 1.0) /
            (rosterController.roster.numOfDays * BulldozerList[0].value);

    equipmentOverburden.excavator =
        (excavationController.excavation.stone * 1.0) /
            (rosterController.roster.numOfDays * ExcavatorList[0].value);

    Random rand = Random();
    equipmentOverburden.actror6Wheels = rand.nextDouble() * 256;

    equipmentOverburden.dumperTrucker = rand.nextDouble() * 256;
    equipmentOverburden.wheelLoader = rand.nextDouble() * 256;
  }

  void calculateEquipmentPhosphate() {
    Random rand = Random();
    equipmentPhosphate.actror6Wheels = rand.nextDouble() * 256;
    equipmentPhosphate.excavator = rand.nextDouble() * 256;
    equipmentPhosphate.wheelLoader = rand.nextDouble() * 256;
  }

  void calculateTotalEquipment() {
    Random rand = Random();
    totalEquipment.actror6Wheels = rand.nextDouble() * 256;
    totalEquipment.bulldozer = rand.nextDouble() * 256;
    totalEquipment.dumperTrucker = rand.nextDouble() * 256;
    totalEquipment.excavator = rand.nextDouble() * 256;
    totalEquipment.wheelLoader = rand.nextDouble() * 256;
  }
}
