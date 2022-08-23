import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;

class FunctionButtonController {
  FunctionButtonController() {}

  Future<void> reportSheet() async {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) => pw.Center(
            child: pw.Row(children: [
          pw.Text('Hello World!'),
        ])),
      ),
    );

    final file = File('reports/Report.pdf');
    await file.writeAsBytes(await pdf.save());
    print('Report saved');
  }
}
