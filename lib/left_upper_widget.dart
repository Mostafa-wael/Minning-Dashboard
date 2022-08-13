import 'package:flutter/material.dart';

class LeftUpperWidget extends StatelessWidget {
  const LeftUpperWidget({super.key});

  // create a body widget
  Widget widgetBody(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width * 2.5 / 4,
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return widgetBody(context);
  }
}
