import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:minning/right_upper_widget.dart';
import 'package:minning/table_widget.dart';
import 'package:pluto_grid/pluto_grid.dart';

import 'equipment_ct_widget.dart';
import 'equipment_widget.dart';

class LeftUpperWidget extends StatefulWidget {
  const LeftUpperWidget({
    super.key,
  });

  @override
  State<LeftUpperWidget> createState() => _LeftUpperWidgetState();
}

class _LeftUpperWidgetState extends State<LeftUpperWidget> {
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
                EquipmentWidget(),
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
