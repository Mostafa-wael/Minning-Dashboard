import 'package:flutter/material.dart';
import 'package:minning/right_upper_widget.dart';
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
  final List<PlutoColumn> columns = <PlutoColumn>[
    PlutoColumn(
      title: 'Id',
      field: 'id',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Bulldozer',
      field: 'Bulldozer',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Exacavator',
      field: 'Exacavator',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Wheel Loader',
      field: 'Wheel Loader',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Dumper Trucks',
      field: 'Dumper Trucks',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Actros 6 Wheels',
      field: 'Actros 6 Wheels',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Actros 6 Wheels(ph)',
      field: 'Actros 6 Wheels(ph)',
      type: PlutoColumnType.number(),
    ),
  ];

  final List<PlutoRow> rows = [
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 'Equipment C.T(m3/h)'),
        'Dumper Trucks': PlutoCell(value: 5),
        'Actros 6 Wheels': PlutoCell(value: 20),
        'Actros 6 Wheels(ph)': PlutoCell(value: 5),

        // split
        'Bulldozer': PlutoCell(value: 0),
        'Exacavator': PlutoCell(value: 0),
        'Wheel Loader': PlutoCell(value: 0),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 'Equipment overburden'),
        'Dumper Trucks': PlutoCell(value: 5),
        'Actros 6 Wheels': PlutoCell(value: 20),
        'Bulldozer': PlutoCell(value: 5),
        'Exacavator': PlutoCell(value: 5),
        'Wheel Loader': PlutoCell(value: 5),

        // split
        'Actros 6 Wheels(ph)': PlutoCell(value: 0),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 'Equipment phosphate'),
        'Exacavator': PlutoCell(value: 5),
        'Wheel Loader': PlutoCell(value: 5),
        'Actros 6 Wheels': PlutoCell(value: 20),

        // split
        'Bulldozer': PlutoCell(value: 0),
        'Dumper Trucks': PlutoCell(value: 0),
        'Actros 6 Wheels(ph)': PlutoCell(value: 0),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 'Total Equipment'),
        'Dumper Trucks': PlutoCell(value: 5),
        'Actros 6 Wheels': PlutoCell(value: 20),
        'Bulldozer': PlutoCell(value: 5),
        'Exacavator': PlutoCell(value: 5),
        'Wheel Loader': PlutoCell(value: 5),

        // split
        'Actros 6 Wheels(ph)': PlutoCell(value: 0),
      },
    ),
  ];

  final List<PlutoColumnGroup> columnGroups = [
    PlutoColumnGroup(title: 'Id', fields: ['id'], expandedColumn: true),
    PlutoColumnGroup(
        title: 'Bulldozer', fields: ['Bulldozer'], expandedColumn: true),
    PlutoColumnGroup(
        title: 'Exacavator', fields: ['Exacavator'], expandedColumn: true),
    PlutoColumnGroup(
        title: 'Wheel Loader', fields: ['Wheel Loader'], expandedColumn: true),
    PlutoColumnGroup(
        title: 'Dumper Trucks',
        fields: ['Dumper Trucks'],
        expandedColumn: true),
    PlutoColumnGroup(
        title: 'Actros 6 Wheels',
        fields: ['Actros 6 Wheels'],
        expandedColumn: true),
    PlutoColumnGroup(
        title: 'Actros 6 Wheels(ph)',
        fields: ['Actros 6 Wheels(ph)'],
        expandedColumn: true),
  ];

  // final List<PlutoColumn> columns = <PlutoColumn>[
  //   PlutoColumn(
  //     title: 'Id',
  //     field: 'id',
  //     type: PlutoColumnType.text(),
  //   ),
  //   PlutoColumn(
  //     title: 'Name',
  //     field: 'name',
  //     type: PlutoColumnType.number(),
  //   ),
  //   PlutoColumn(
  //     title: 'Age',
  //     field: 'age',
  //     type: PlutoColumnType.number(),
  //   ),
  //   PlutoColumn(
  //     title: 'Role',
  //     field: 'role',
  //     type: PlutoColumnType.number(),
  //   ),
  //   PlutoColumn(
  //     title: 'Joined',
  //     field: 'joined',
  //     type: PlutoColumnType.number(),
  //   ),
  //   PlutoColumn(
  //     title: 'Working time',
  //     field: 'working_time',
  //     type: PlutoColumnType.number(),
  //   ),
  // ];

  // final List<PlutoRow> rows = [
  //   PlutoRow(
  //     cells: {
  //       'id': PlutoCell(value: 'user1'),
  //       'name': PlutoCell(value: 5),
  //       'age': PlutoCell(value: 20),
  //       'role': PlutoCell(value: 6),
  //       'joined': PlutoCell(value: 5),
  //       'working_time': PlutoCell(value: 5),
  //     },
  //   ),
  //   PlutoRow(
  //     cells: {
  //       'id': PlutoCell(value: 'user2'),
  //       'name': PlutoCell(value: 5),
  //       'age': PlutoCell(value: 5),
  //       'role': PlutoCell(value: 5),
  //       'joined': PlutoCell(value: 5),
  //       'working_time': PlutoCell(value: 5),
  //     },
  //   ),
  //   PlutoRow(
  //     cells: {
  //       'id': PlutoCell(value: 'user3'),
  //       'name': PlutoCell(value: 5),
  //       'age': PlutoCell(value: 5),
  //       'role': PlutoCell(value: 5),
  //       'joined': PlutoCell(value: 5),
  //       'working_time': PlutoCell(value: 5),
  //     },
  //   ),
  // ];

  // /// columnGroups that can group columns can be omitted.
  // final List<PlutoColumnGroup> columnGroups = [
  //   PlutoColumnGroup(title: 'Id', fields: ['id'], expandedColumn: true),
  //   PlutoColumnGroup(title: 'User information', fields: ['name', 'age']),
  //   PlutoColumnGroup(title: 'Status', children: [
  //     PlutoColumnGroup(title: 'A', fields: ['role'], expandedColumn: true),
  //     PlutoColumnGroup(title: 'Etc.', fields: ['joined', 'working_time']),
  //   ]),
  // ];
  late final PlutoGridStateManager stateManager;

  // create a body widget
  Widget widgetBody(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 2.5 / 4 * (1 / 4),
          child: Column(children: <Widget>[
            EquipmentWidget(),
            SizedBox(height: 20),
            EquipmentCtWidget()
          ]),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 2.5 / 4 * (3 / 4),
          child: PlutoGrid(
            columns: columns,
            rows: rows,
            columnGroups: columnGroups,
            configuration: const PlutoGridConfiguration(),
            onLoaded: (PlutoGridOnLoadedEvent event) {
              stateManager = event.stateManager;
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return widgetBody(context);
  }
}
