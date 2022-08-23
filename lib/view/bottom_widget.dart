// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';

import '../controller/excavation_controller.dart';
import '../controller/functionButtons_controller.dart';
import '../controller/haulage_controller.dart';
import '../decoration/textfield_decoration.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget(
      {super.key,
      required this.haulageController,
      required this.excavationController});
  final HaulageController haulageController;
  final ExcavationController excavationController;

  @override
  Widget build(BuildContext context) {
    return widgetBody(context);
  }

  // create a body widget
  Widget widgetBody(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/cat.jpg'),
          radius: 50.0,
        ),
        FunctionButtons(
          excavationController: excavationController,
          haulageController: haulageController,
        ),
        ProjectData(),
      ],
    );
  }
}

class FunctionButtons extends StatelessWidget {
  final FunctionButtonController functionButtonController =
      FunctionButtonController();
  final HaulageController haulageController;
  final ExcavationController excavationController;
  FunctionButtons({
    Key? key,
    required this.haulageController,
    required this.excavationController,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
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
              onPressed: () {
                functionButtonController.reportSheet(
                    haulageController, excavationController);
              },
              child: const Text('Report Sheet'),
            ),
          ],
        ),
        const SizedBox(width: 10.0, height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                functionButtonController.loadSheet();
              },
              child: const Text('Load Sheet'),
            ),
            const SizedBox(width: 10.0, height: 10.0),
            ElevatedButton(
              onPressed: () {
                // programmatically exit the app
                exit(0);
              },
              child: const Text('Exit Sheet'),
            ),
          ],
        ),
      ],
    );
  }
}

class ProjectData extends StatelessWidget {
  const ProjectData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Company Name:'),
              const SizedBox(
                width: 10.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4 / 4 * 1.5,
                height: MediaQuery.of(context).size.height * 0.3 / 10,
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
                width: MediaQuery.of(context).size.width * 0.4 / 4 * 1.5,
                height: MediaQuery.of(context).size.height * 0.3 / 10,
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
                width: MediaQuery.of(context).size.width * 0.4 / 4 * 1.5,
                height: MediaQuery.of(context).size.height * 0.3 / 10,
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
        ]);
  }
}
