import 'package:minning/models/bulldozer_model.dart';
import 'package:minning/models/excavator_model.dart';
import 'package:minning/models/wheelloader_model.dart';

class HaulageController {
  var BulldozerList = <Bulldozer>[];
  var WheelLoaderList = <WheelLoader>[];
  var ExcavatorList = <Excavator>[];

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
}
