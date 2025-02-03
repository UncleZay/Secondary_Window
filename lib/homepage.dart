import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:desktop_multi_window/desktop_multi_window.dart';


class MyHomePage extends StatefulWidget {
  final int windowID;
  const MyHomePage({super.key, required this.windowID});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // Open a secondary window
  Future<void> _openSecondaryWindow() async {
    // final arguments = jsonEncode({
    //   // 'window_type': 'secondary', // You can add any arguments you need to pass
    //   // 'windowID': widget.windowID, // Pass the window ID to the secondary window
    // });

    try {
      // Create and configure the new window
      // final window = await DesktopMultiWindow.createWindow(arguments);
      final window = await DesktopMultiWindow.createWindow();
      await window
        ..setFrame(const Offset(0, 0) & const Size(1280, 720))
        ..center()
        ..setTitle("Secondary Window")
        ..show();
    } catch (e) {
      print('Error opening secondary window: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'This is the Primary Page...',
              style: TextStyle(fontSize: 40),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                _openSecondaryWindow();  // Open the secondary window when button is pressed
              },
              child: const Text("Go To Secondary Page"),
            ),
          ],
        ),
      ),
    );
  }
}
