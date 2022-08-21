import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:minning/controller/haulage_controller.dart';
import 'package:minning/view/right_upper_widget.dart';
import 'package:minning/view/table_widget.dart';
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
        Container(
          width: MediaQuery.of(context).size.width * 2.5 / 4 * 0.3,
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                EquipmentWidget(haulageController: haulageController),
                SizedBox(height: 20),
                EquipmentCtWidget()
              ]),
        ),
        Container(
            width: MediaQuery.of(context).size.width * 2.5 / 4 * 0.7,
            child: TableWidget()),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return widgetBody(context);
  }
}
