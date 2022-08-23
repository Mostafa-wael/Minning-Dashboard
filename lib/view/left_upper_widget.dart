import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:minning/controller/haulage_controller.dart';
import 'package:minning/view/equipment_ct_out.dart';
import 'package:minning/view/equipment_overburden_widget.dart';
import 'package:minning/view/equipment_phosphate_widget.dart';
import 'package:minning/view/right_upper_widget.dart';
import 'package:minning/view/table_widget.dart';
import 'package:minning/view/total_equipment_widget.dart';
import 'package:pluto_grid/pluto_grid.dart';

import 'equipment_ct_widget.dart';
import 'equipment_widget.dart';

class LeftUpperWidget extends StatefulWidget {
  LeftUpperWidget({super.key, required this.haulageController});

  final HaulageController haulageController;

  @override
  State<LeftUpperWidget> createState() =>
      _LeftUpperWidgetState(this.haulageController);
}

class _LeftUpperWidgetState extends State<LeftUpperWidget> {
  _LeftUpperWidgetState(this.haulageController);

  final HaulageController haulageController;

  // create a body widget
  Widget widgetBody(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 3 / 4 * 0.3,
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                EquipmentWidget(haulageController: this.haulageController),
                SizedBox(height: 20),
                EquipmentCtWidget(haulageController: this.haulageController)
              ]),
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width * 3 / 4 * 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 3 / 4 * 0.7,
                  height: MediaQuery.of(context).size.width * 0.025,
                  color: Color.fromRGBO(189, 183, 107, 0.856),
                  child: Center(
                    child: Text(
                      "Haulage and excavation system",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                EquipmentCtOutputWidget(
                    haulageController: this.haulageController),
                SizedBox(
                  height: 10,
                ),
                EquipmentoverburdenWidget(
                    haulageController: this.haulageController),
                SizedBox(
                  height: 10,
                ),
                EquipmentPhosphateWidget(
                    haulageController: this.haulageController),
                SizedBox(
                  height: 10,
                ),
                TotalEquipmentWidget(haulageController: this.haulageController),
              ],
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return widgetBody(context);
  }
}
