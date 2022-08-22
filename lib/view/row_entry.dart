import 'package:flutter/material.dart';
import 'package:minning/decoration/textfield_decoration.dart';

class RowEntry extends StatelessWidget {
  const RowEntry(
      {super.key,
      required this.label,
      required this.outputValue,
      required this.isInput,
      required this.width,
      this.icon,
      this.isDropMenu});

  final String label;
  final String outputValue;
  final bool isInput;
  final double width;
  final String? icon;
  final bool? isDropMenu;

  // create a body widget
  Widget widgetBody(BuildContext context) {
    int index = 0;
    var items = [
      'Item 1',
      'Item 2',
      'Item 3',
    ];

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        this.isDropMenu != null
            ? DropdownButton(
                icon: Container(
                  child: Image(
                    image: AssetImage(icon!),
                    width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                    height: MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                  ),
                ),
                items: items.map((String i) {
                  return DropdownMenuItem(
                      value: items.indexOf(i),
                      child: Container(
                        child: Image(
                          image: AssetImage(icon!),
                          width:
                              MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                          height:
                              MediaQuery.of(context).size.width * 0.4 / 4 * 0.3,
                        ),
                      ));
                }).toList(),
                onChanged: ((value) => print(value)),
              )
            : this.icon != null
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
        SizedBox(
          width: 20,
        ),
        Container(
          width: width,
          child: SizedBox(
            height: 19,
            child: TextFormField(
              initialValue: outputValue,
              enabled: isInput,
              textAlign: TextAlign.center,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: TextFieldDecoration.border(),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return widgetBody(context);
  }
}
