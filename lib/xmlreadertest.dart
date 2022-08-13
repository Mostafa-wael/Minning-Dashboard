// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:xml/xml.dart';

// void main() {
//   print('\n\n\n');
//   final file = new File('F:\\Minning\\code\\minning\\lib\\test.xml');

//   print('textual:\n');
//   final document = XmlDocument.parse(file.readAsStringSync());
//   final textual = document.descendants
//       .where((node) => node is XmlText && node.text.trim().isNotEmpty)
//       .join('\n');
//   print(textual);

//   print('\n\ntiltes 01:\n');
//   final titles = document.findAllElements('title');
//   titles.map((node) => node.text).forEach(print);

//   print('\n\ntiltes 02:\n');
//   final titles2 = document
//       .findAllElements('book')
//       .map((node) => node.findElements('title').single.text);
//   print(titles2);

//   print('\n\ntotal:\n');
//   final total = document
//       .findAllElements('book')
//       .map((node) => double.parse(node.findElements('price').single.text))
//       .reduce((a, b) => a + b);
//   print(total);

//   print('\n\n\n');
// }
