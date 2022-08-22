import 'package:flutter/material.dart';
import 'package:minning/decoration/textfield_decoration.dart';

class ColumnEntry extends StatelessWidget {
  const ColumnEntry(
      {super.key,
      required this.label,
      required this.outputValue,
      required this.isInput,
      required this.width,
      this.icon});

  final String label;
  final String outputValue;
  final bool isInput;
  final double width;
  final String? icon;

  // create a body widget
  Widget widgetBody(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            this.icon != null
                ? Image(
                    image: AssetImage(icon!),
                    width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                    height: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                  )
                : Container(),
            this.icon != null ? SizedBox(width: 10) : Container(),
            Container(
              color: Color.fromRGBO(238, 232, 170, 0.856),
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          width: width,
          child: SizedBox(height: 19, child: Text("20")),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return widgetBody(context);
  }
}
