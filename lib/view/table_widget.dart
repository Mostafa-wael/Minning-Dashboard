import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:minning/view/row_entry.dart';

class TableWidget extends StatelessWidget {
  TableWidget({super.key});

  final List<int> dumpValues = <int>[1, 2, 3, 4, 5, 6];
  final List<String> rowHeaders = <String>[
    'Bulldozer',
    'Excavator',
    'Wheel Loader',
    'Dumper Trucks',
    'Actros 6 Wheels',
    'Actros 6 Wheels(ph)'
  ];
  final List<String> columnHeaders = <String>[
    'Equipment C.T(m3/h)',
    'Equipment overburden',
    'Equipment phosphate',
    'Total Equipment',
    'Total Equipment',
  ];

  // create a body widget
  Widget widgetBody(BuildContext context) {
    return HorizontalDataTable(
      leftHandSideColumnWidth: 150,
      rightHandSideColumnWidth: 7 * 200,
      isFixedHeader: true,
      headerWidgets: _getTitleWidget(),
      leftSideItemBuilder: _generateFirstColumnRow,
      rightSideItemBuilder: _generateRightHandSideColumnRow,
      itemCount: 5,
      rowSeparatorWidget: const Divider(
        color: Colors.black54,
        height: 1.0,
        thickness: 0.0,
      ),
      leftHandSideColBackgroundColor: Color(0xFFFFFFFF),
      rightHandSideColBackgroundColor: Color(0xFFFFFFFF),
    );
  }

  List<Widget> _getTitleWidget() {
    return [
      Container(
        child: Text('Name', style: TextStyle(fontWeight: FontWeight.bold)),
        width: 175,
        height: 56,
        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
        alignment: Alignment.centerLeft,
      ),
      _getTitleItemWidget(rowHeaders[0], 175),
      _getTitleItemWidget(rowHeaders[1], 175),
      _getTitleItemWidget(rowHeaders[2], 175),
      _getTitleItemWidget(rowHeaders[3], 175),
      _getTitleItemWidget(rowHeaders[4], 175),
      _getTitleItemWidget(rowHeaders[5], 175),
    ];
  }

  Widget _getTitleItemWidget(String label, double width) {
    return Row(
      children: [
        Image(
          image: AssetImage('assets/images/cat.jpg'),
          width: 35,
          height: 35,
        ),
        Container(
          child: Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
          width: width - 20,
          height: 56,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
      ],
    );
  }

  Widget _generateFirstColumnRow(BuildContext context, int index) {
    return Container(
      child: Text(columnHeaders[index]),
      width: 175,
      height: 52,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
    );
  }

  Widget _generateRightHandSideColumnRow(BuildContext context, int index) {
    var cell = Container(
      child: index == columnHeaders.length - 1
          ? SizedBox(
              height: 19,
              child: TextFormField(
                initialValue: "",
                textAlign: TextAlign.center,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black),
                  ),
                ),
              ),
            )
          : Text(
              dumpValues[index].toString(),
            ),
      width: 200,
      height: 52,
      // padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
    );

    return Row(
      children: <Widget>[
        cell,
        cell,
        cell,
        cell,
        cell,
        cell,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return widgetBody(context);
  }
}
