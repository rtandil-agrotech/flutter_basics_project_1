import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Step 1
    // Create Material App Widget
    // (Home)
    return Container();
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // TODO: Step 2
  // Initialize RandomDiceGenerator Class

  // TODO: Step 4
  // Create Scaffold which shows Dice Widget

  // TODO: Step 5
  // Implement setstate on button to re-set DiceWidget value
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DiceWidget extends StatelessWidget {
  const DiceWidget({Key? key}) : super(key: key);

  // TODO: Step 3
  // Create Dice Showing Widget which takes value as a parameter
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
