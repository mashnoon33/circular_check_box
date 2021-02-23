import 'package:flutter/material.dart';
import 'package:circular_check_box/circular_check_box.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Circular Checkbox Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Circular Checkbox Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool normalSelected = true;
  bool circularSelected = true;
  bool? circularTriSelected;
  bool circularStyledSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircularCheckBox(
              value: this.circularSelected,
              onChanged: (val) => this.setState(
                () {
                  this.circularSelected = !this.circularSelected;
                },
              ),
            ),
            title: Text("Normal circular checkbox"),
          ),
          ListTile(
            leading: CircularCheckBox(
              tristate: true,
              value: this.circularTriSelected,
              onChanged: (val) => this.setState(
                () {
                  this.circularTriSelected = val;
                },
              ),
            ),
            title: Text("Tri-state circular checkbox"),
          ),
          ListTile(
            leading: CircularCheckBox(value: true, onChanged: null),
            title: Text("Disabled checked circular checkbox"),
          ),
          ListTile(
            leading: CircularCheckBox(value: false, onChanged: null),
            title: Text("Disabled unchecked circular checkbox"),
          ),
          ListTile(
            leading: CircularCheckBox(
              value: this.circularStyledSelected,
              checkColor: Colors.black,
              activeColor: Colors.green,
              fillColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.hovered))
                  return Colors.yellow;
              }),
              onChanged: (val) => this.setState(
                () {
                  this.circularStyledSelected = !this.circularStyledSelected;
                },
              ),
            ),
            title: Text("Styled circular checkbox"),
          ),
        ],
      ),
    );
  }
}
