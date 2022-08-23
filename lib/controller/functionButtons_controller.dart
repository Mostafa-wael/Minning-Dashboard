import 'dart:io';

import 'package:flutter/material.dart';
import 'package:minning/controller/excavation_controller.dart';
import 'package:minning/controller/haulage_controller.dart';
import 'package:pdf/widgets.dart' as pw;

class FunctionButtonController {
  FunctionButtonController() {}

  Future<void> reportSheet(HaulageController haulageController,
      ExcavationController excavationController) async {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) => pw.Center(
            child: pw.Row(children: [
          pw.Text(haulageController.output.actror6Wheels.toString()),
          pw.SizedBox(width: 50),
          pw.Text(haulageController.output.dumperTrucker.toString()),
          pw.SizedBox(width: 50),
          pw.Text(haulageController.output.bulldozer.toString()),
          pw.SizedBox(width: 50),
          pw.Text(haulageController.output.excavator.toString()),
          pw.SizedBox(width: 50),
          pw.Text(haulageController.output.wheelLoader.toString()),
          pw.SizedBox(width: 50),
          pw.Text(excavationController.excavation.revenueOverT.toString()),
          pw.SizedBox(width: 50),
          pw.Text(
              excavationController.excavation.productionCostOverT.toString()),
          pw.SizedBox(width: 50),
          pw.Text(
              excavationController.excavation.strippingCostOverT.toString()),
          pw.SizedBox(width: 50),
        ])),
      ),
    );

    final file = File('reports/Report.pdf');
    await file.writeAsBytes(await pdf.save());
    print('Report saved');
  }
}
