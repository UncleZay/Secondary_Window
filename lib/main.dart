
import 'package:flutter/material.dart';
import 'package:secondarywindow/homepage.dart';
import 'package:secondarywindow/secondarypage.dart';

void main(List<String> args) {
  runApp(
    args.isNotEmpty && args[0] == "multi_window"
        ? MaterialApp(  // Wrap Secondarypage in MaterialApp
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: Secondarypage(
              windowID: int.parse(args[1]),  // Pass windowId
              // arguments: args[2],             // Pass arguments
            ),
          )
        : MyApp(args),
  );
}

class MyApp extends StatelessWidget {
  final List<String> args;
  const MyApp(this.args, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(windowID: 0),
    );
  }
}
