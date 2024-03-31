import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage(this.mode, this.changeState, {super.key});

  final String mode;
  final Function() changeState;
  @override
  State<Homepage> createState() {
    return _Homepage();
  }
}

class _Homepage extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    String mode = widget.mode;
    Function() changeState = widget.changeState;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            mode == "light" ? "Light Mode" : "Dark Mode",
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Center(
        child: GestureDetector(
          onTap: changeState,
          child: Image.asset("assets/$mode.png"),
        ),
      ),
    );
  }
}
