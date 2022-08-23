// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../decoration/textfield_decoration.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({super.key});

  // create a body widget
  Widget widgetBody(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        const CircleAvatar(
          backgroundImage: AssetImage('assets/images/cat.jpg'),
          radius: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('New Sheet'),
                ),
                const SizedBox(width: 10.0, height: 10.0),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Save Sheet'),
                ),
              ],
            ),
            const SizedBox(width: 10.0, height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Load Sheet'),
                ),
                const SizedBox(width: 10.0, height: 10.0),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Exit Sheet'),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          width: 10.0,
        ),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Company Name:'),
              const SizedBox(
                width: 10.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.7,
                child: SizedBox(
                  height: 19,
                  child: TextFormField(
                    initialValue: 'Company Name',
                    enabled: true,
                    textAlign: TextAlign.center,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: TextFieldDecoration.border(),
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Project title:'),
              SizedBox(
                width: 38.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.7,
                child: SizedBox(
                  height: 19,
                  child: TextFormField(
                    initialValue: 'Project title',
                    enabled: true,
                    textAlign: TextAlign.center,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: TextFieldDecoration.border(),
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Prepared By:'),
              SizedBox(
                width: 35.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4 / 4 * 0.7,
                child: SizedBox(
                  height: 19,
                  child: TextFormField(
                    initialValue: 'Prepared By',
                    enabled: true,
                    textAlign: TextAlign.center,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: TextFieldDecoration.border(),
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                ),
              )
            ],
          )
        ]),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return widgetBody(context);
  }
}
