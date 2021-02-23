import 'package:flutter/material.dart';
import 'package:circular_check_box/circular_check_box.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Circular Checkbox Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool selected = true;

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
                value: this.selected,
                checkColor: Colors.white,
                activeColor: Colors.green,
                onChanged: (val) => this.setState(
                  () {
                    this.selected = !this.selected;
                  },
                ),
              ),
              title: Text("Click me"),
              onTap: () => setState(() => this.selected = !this.selected),
            ),
            ListTile(
              leading: CircularCheckBox(
                value: this.selected,
                checkColor: Colors.white,
                activeColor: Colors.green,
                inactiveColor: Colors.redAccent,
                disabledColor: Colors.grey,
                onChanged: (val) => this.setState(
                  () {
                    this.selected = !this.selected;
                  },
                ),
              ),
              title: Text("Click me"),
              onTap: () => this.setState(
                () {
                  this.selected = !this.selected;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
