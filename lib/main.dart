import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  late int value;

  @override
  void initState() {
    value = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(value);
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  value.toString(),
                  style: TextStyle(fontSize: 24),
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    value = value + 1;
                  });
                },
                child: Text('Add'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
