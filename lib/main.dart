import 'package:flutter/material.dart';

void main() {
  runApp(const WidgetApp());
}

class WidgetApp extends StatelessWidget {
  const WidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Widget App'),
        ),
        body: Column(
          children: [
            // Displaying an image at the top
            Image.network(
              'https://flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png',
              height: 200,
            ),
            // A row with text and icons
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.blue, size: 50),
                SizedBox(width: 10), // A space between icon and text
                Text(
                  'Row with Icon',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(width: 10), // Another space between text and icon
                Icon(Icons.star, color: Colors.blue, size: 50),
              ],
            ),
            // Spacer to push button to the bottom of the screen
            const Spacer(),
            // An elevated button at the bottom
            ElevatedButton(
              onPressed: () {
                // Action when button is pressed
                print('Button pressed');
              },
              child: const Text('Press Me'),
            ),
            //calling to elevatedbutton
          ],
        ),
      ),
    );
  }
}
