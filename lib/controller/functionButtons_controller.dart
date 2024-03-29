// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:math';

import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:minning/controller/excavation_controller.dart';
import 'package:minning/controller/haulage_controller.dart';
import 'package:minning/controller/roster_controller.dart';
import 'package:path/path.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class FunctionButtonController {
  FunctionButtonController();

  Future<void> reportSheet(HaulageController haulageController,
      ExcavationController excavationController) async {
    final pdf = pw.Document();
    const baseColor = PdfColors.cyan;
    const chartColors = [
      PdfColors.blue300,
      PdfColors.green300,
      PdfColors.amber300,
      PdfColors.pink300,
      PdfColors.cyan300,
      PdfColors.purple300,
      PdfColors.lime300,
    ];
    const tableHeaders = ['Category', 'Amount'];

    var dataTable = [
      ['Bulldozer', haulageController.output.bulldozer],
      ['Excavator', haulageController.output.excavator],
      ['Wheel Loader', haulageController.output.wheelLoader],
      ['Dump Trucks', haulageController.output.dumperTrucker],
      ['Actor 6 wheels', haulageController.output.actror6Wheels],
    ];
    final table = pw.Table.fromTextArray(
      border: null,
      headers: tableHeaders,
      data: List<List<dynamic>>.generate(
        dataTable.length,
        (index) => <dynamic>[
          dataTable[index][0],
          dataTable[index][1],
        ],
      ),
      headerStyle: pw.TextStyle(
        color: PdfColors.white,
        fontWeight: pw.FontWeight.bold,
      ),
      headerDecoration: const pw.BoxDecoration(
        color: baseColor,
      ),
      rowDecoration: const pw.BoxDecoration(
        border: pw.Border(
          bottom: pw.BorderSide(
            color: baseColor,
            width: .5,
          ),
        ),
      ),
      cellAlignment: pw.Alignment.centerRight,
      cellAlignments: {0: pw.Alignment.centerLeft},
    );
    final chart1 = pw.Chart(
      left: pw.Container(
        alignment: pw.Alignment.topCenter,
        margin: const pw.EdgeInsets.only(right: 5, top: 10),
        child: pw.Transform.rotateBox(
          angle: pi / 2,
          child: pw.Text('Amount'),
        ),
      ),
      overlay: pw.ChartLegend(
        position: const pw.Alignment(-.7, 1),
        decoration: pw.BoxDecoration(
          color: PdfColors.white,
          border: pw.Border.all(
            color: PdfColors.black,
            width: .5,
          ),
        ),
      ),
      grid: pw.CartesianGrid(
        xAxis: pw.FixedAxis.fromStrings(
          List<String>.generate(
              dataTable.length, (index) => dataTable[index][0] as String),
          marginStart: 30,
          marginEnd: 30,
          ticks: true,
        ),
        yAxis: pw.FixedAxis(
          [
            0,
            1,
            2,
            3,
            4,
            5,
            6,
            7,
            8,
            9,
            10,
            11,
            12,
            13,
            14,
            15,
            16,
            17,
            18,
            19,
            20
          ],
          format: (v) => '$v',
          divisions: true,
        ),
      ),
      datasets: [
        pw.BarDataSet(
          color: PdfColors.blue100,
          legend: tableHeaders[1],
          width: 15,
          offset: -10,
          borderColor: baseColor,
          data: List<pw.PointChartValue>.generate(
            dataTable.length,
            (i) {
              final v = dataTable[i][1] as num;
              return pw.PointChartValue(i.toDouble(), v.toDouble());
            },
          ),
        ),
        pw.BarDataSet(
          color: PdfColors.amber100,
          legend: tableHeaders[0],
          width: 15,
          offset: 10,
          borderColor: PdfColors.amber,
          data: List<pw.PointChartValue>.generate(
            dataTable.length,
            (i) {
              final v = dataTable[i][1] as num;
              return pw.PointChartValue(i.toDouble(), v.toDouble());
            },
          ),
        ),
      ],
    );

    pdf.addPage(
      pw.Page(
          pageFormat: PdfPageFormat.a4,
          build: (pw.Context context) => pw.Column(children: [
                pw.Center(
                  child: pw.Text('Report Sheet',
                      style: pw.TextStyle(
                          fontSize: 20,
                          fontWeight: pw.FontWeight.bold,
                          color: baseColor)),
                ),
                pw.Divider(thickness: 4),
                // The output
                pw.Expanded(flex: 3, child: pw.Text('Haulage')),
                pw.Divider(),
                pw.SizedBox(height: 25),
                chart1,
                table,
              ])),
    );
    pdf.addPage(pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) =>
          pw.Column(mainAxisAlignment: pw.MainAxisAlignment.start, children: [
        pw.Expanded(flex: 3, child: pw.Text('Excavation')),
        pw.Divider(),
        pw.SizedBox(height: 25),
        pw.Row(children: [
          pw.Text('Revenue/t: '),
          pw.Text(
            '\$${excavationController.excavation.revenueOverT.toStringAsFixed(2)}',
            style: pw.TextStyle(
              fontWeight: pw.FontWeight.bold,
            ),
          ),
        ]),
        pw.Row(children: [
          pw.Text('Production cost/t: '),
          pw.Text(
            '\$${excavationController.excavation.productionCostOverT.toStringAsFixed(2)}',
            style: pw.TextStyle(
              fontWeight: pw.FontWeight.bold,
            ),
          ),
        ]),
        pw.Row(children: [
          pw.Text('Stripping cost/t: '),
          pw.Text(
            '\$${excavationController.excavation.strippingCostOverT.toStringAsFixed(2)}',
            style: pw.TextStyle(
              fontWeight: pw.FontWeight.bold,
            ),
          ),
        ]),
      ]),
    ));

    final file = File('reports/Report.pdf');
    await file.writeAsBytes(await pdf.save());
    print('Report saved');
  }

  void loadSheet(
      HaulageController haulageController,
      ExcavationController excavationController,
      RosterController rosterController) {
    var file = "reports/test.xlsx";
    var bytes = File(file).readAsBytesSync();
    var excel = Excel.decodeBytes(bytes);

    Sheet sheetObject = excel['reports/test.xlsx'];
    // var cell = sheetObject.cell(CellIndex.indexByString("A3"));
    // print("CellType: ${cell.colIndex} ${cell.rowIndex} ${cell.value} ${cell.toString()}");

    for (var table in excel.tables.keys) {
      // print(table); //sheet Name
      // print(excel.tables[table]?.maxCols);
      // print(excel.tables[table]?.maxRows);
      if (excel.tables[table]?.rows != null) {
        for (List row in excel.tables[table]!.rows) {
          if (row != null) {
            for (var cell in row) {
              if (cell != null) {
                print(cell.value);
              }
            }
          }
        }
      }
    }
  }

  void newSheet(
    HaulageController haulageController,
    ExcavationController excavationController,
  ) {
    haulageController.initialValue();
    excavationController.initialValue();
  }
}
