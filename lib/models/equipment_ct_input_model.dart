class EquipmentCTInput {
  EquipmentCTInputDumperTrucks dumperTrucks = EquipmentCTInputDumperTrucks();
  EquipmentCTInputActros6Wheels actros6Wheels = EquipmentCTInputActros6Wheels();
  EquipmentCTInputActros6WheelsPh actros6WheelsPh =
      EquipmentCTInputActros6WheelsPh();
}

class EquipmentCTInputDumperTrucks {
  int capacity = 30;
  int timeToGoAndBack = 10;
  int loadingAndUnloadingTime = 10;
}

class EquipmentCTInputActros6Wheels {
  int capacity = 16;
  int timeToGoAndBack = 10;
  int loadingAndUnloadingTime = 10;
}

class EquipmentCTInputActros6WheelsPh {
  int capacity = 16;
  int timeToGoAndBack = 20;
  int loadingAndUnloadingTime = 10;
}
