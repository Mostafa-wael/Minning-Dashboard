import 'dart:io';

import 'package:flutter/material.dart';
import 'package:minning/controller/excavation_controller.dart';
import 'package:minning/controller/haulage_controller.dart';
import 'package:minning/controller/roster_controller.dart';
import 'package:minning/view/bottom_widget.dart';
import 'package:minning/view/left_upper_widget.dart';
import 'package:minning/view/right_upper_widget.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('My App');
    setWindowMaxSize(const Size(1920, 1080));
    setWindowMinSize(const Size(1700, 850));
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(title: 'Project Demo'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  HaulageController haulageController = HaulageController();
  ExcavationController excavationController = ExcavationController();
  RosterController rosterController = RosterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.5 / 10,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 1.5 / 10,
            // color: Colors.blueAccent,
            child: BottomWidget(
              excavationController: excavationController,
              haulageController: haulageController,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 7 / 10,
            // color: Colors.amber,
            child: Row(children: <Widget>[
              RightUpperWidget(
                excavationController: excavationController,
                rosterController: rosterController,
              ),
              LeftUpperWidget(haulageController: haulageController),
            ]),
          ),
          
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.brown,
        tooltip: 'Calculate',
        child: const Icon(Icons.calculate),
        onPressed: () {
          setState(() {
            excavationController.calculateProductionCost();
            excavationController.calculateRevenue();
            excavationController.calculateStrippingCost();
            haulageController.calculateEquipmentCT();

            haulageController.calculateEquipmentOverburden(
                excavationController, rosterController);
            haulageController.calculateEquipmentPhosphate(
                excavationController, rosterController);
            haulageController.calculateTotalEquipment();
          });
        },
      ),
    );
  }
}
