
import 'package:flutter/material.dart';

class Secondarypage extends StatefulWidget {
  final int windowID;
  // final String arguments;
  // const Secondarypage({super.key, required this.windowID, required this.arguments});
  const Secondarypage({super.key, required this.windowID});
  
  @override
  State<Secondarypage> createState() => _SecondarypageState();
}

class _SecondarypageState extends State<Secondarypage> {
  
  @override
  Widget build(BuildContext context) {
    // You can use the windowID and arguments as needed
    // final args = jsonDecode(widget.arguments);
    // final windowType = args['window_type'];
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Secondary Window"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is the Secondary Page...',
              style: TextStyle(fontSize: 40),
            ),
          
          ],
        ),
      ),
    );
  }
}
