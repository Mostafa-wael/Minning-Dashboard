import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({super.key});

  // create a body widget
  Widget widgetBody(BuildContext context) {
    return  Row(
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
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text('Company Name:'),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text('Project title:'),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text('Prepared By:'),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                )
              ]),
        ],
      
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('Example title'),
        actions: const [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      body: widgetBody(context),
    );
  }
}
