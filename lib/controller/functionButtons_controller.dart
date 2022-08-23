import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class FunctionButtonController {
  FunctionButtonController() {}

  Future<void> reportSheet() async {
    final pdf = pw.Document();
    const baseColor = PdfColors.cyan;
    const tableHeaders = ['Category', 'Result'];

    const dataTable = [
      ['Bulldozer', 80],
      ['Excavator', 250],
      ['Wheel Loader', 300],
      ['Dump Trucks', 85],
      ['Actor 6 wheels', 300],
    ];
    final table = pw.Table.fromTextArray(
      border: null,
      headers: tableHeaders,
      data: List<List<dynamic>>.generate(
        dataTable.length,
        (index) => <dynamic>[
          dataTable[index][0],
          dataTable[index][1],
          dataTable[index][2],
          (dataTable[index][1] as num) - (dataTable[index][2] as num),
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
                pw.Expanded(flex: 2, child: pw.Text('Excavation')),
                pw.SizedBox(height: 10),
                table
              ])),
      // pw.Center(
      //     child: pw.Row(children: [
      //   pw.Text('Bulldozer: '),
      //   pw.Text('Excavator: '),
      //   pw.Text('Wheel Loader: '),
      //   pw.Text('Dump Trucks: '),
      //   pw.Text('Actor 6 wheels: '),
      //   pw.Text('Revenue/t: '),
      //   pw.Text('Production Cost/t: '),
      //   pw.Text('Stripping Cost /t: '),
      // ])),
      // ),
    );

    final file = File('reports/Report.pdf');
    await file.writeAsBytes(await pdf.save());
    print('Report saved');
  }
}
