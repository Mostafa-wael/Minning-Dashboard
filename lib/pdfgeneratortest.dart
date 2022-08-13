
import 'dart:io';

import 'package:pdf/widgets.dart' as pw;

Future<void> main() async {
  final pdf = pw.Document();
final image = pw.MemoryImage(
  File('download.jpg').readAsBytesSync(),
);

  pdf.addPage(
    pw.Page(
      build: (pw.Context context) => pw.Center(
        child: pw.Row(children: [
           pw.Text('Hello World!'),
           pw.Image(image),
        ])
      ),
    ),
  );

  final file = File('example.pdf');
  await file.writeAsBytes(await pdf.save());
}