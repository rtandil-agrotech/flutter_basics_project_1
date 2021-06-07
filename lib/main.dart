import 'package:flutter/material.dart';
import 'package:flutter_basics_project_1/randomDiceGenerator.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green,
        ).copyWith(secondary: Colors.white),
      ),
      home: HomePage(
        title: 'Random Dice Generator',
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, String? title})
      : title = title ?? 'Default Title',
        super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int value = 1;
  final instanceOfClass = RandomDiceGenerator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: DiceWidget(
                value: value,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  value = instanceOfClass.call();
                });
              },
              child: Text('Randomize'),
            ),
          ],
        ),
      ),
    );
  }
}

class DiceWidget extends StatelessWidget {
  final int value;

  DiceWidget({required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Center(
        child: Text(value.toString()),
      ),
    );
  }
}
