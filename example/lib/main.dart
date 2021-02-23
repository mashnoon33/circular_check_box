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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              leading: Checkbox(
                value: this.normalSelected,
                checkColor: Colors.white,
                activeColor: Colors.green,
                onChanged: (val) => this.setState(
                  () {
                    this.normalSelected = !this.normalSelected;
                  },
                ),
              ),
              title: Text("Click me"),
              onTap: () => setState(() {
                this.normalSelected = !this.normalSelected;
              }),
            ),
            ListTile(
              leading: CircularCheckBox(
                value: this.circularSelected,
                checkColor: Colors.white,
                activeColor: Colors.green,
                inactiveColor: Colors.redAccent,
                disabledColor: Colors.grey,
                onChanged: (val) => this.setState(
                  () {
                    this.circularSelected = !this.circularSelected;
                  },
                ),
              ),
              title: Text("Click me"),
              onTap: () => this.setState(() {
                this.circularSelected = !this.circularSelected;
              }),
            ),
          ],
        ),
      ),
    );
  }
}
