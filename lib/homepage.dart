import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'hero-image',
              child: Image.asset(
                'images/14cacf65-ee24-4c75-9f41-59669bec8674.png',
                width: 150,
                height: 150,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              },
              child: const Text("Go to Second Screen"),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Screen")),
      body: Center(
        child: Hero(
          tag: 'hero-image',
          child: Image.asset(
            'images/6fa84ded-2aff-4546-8658-d94dad43f5b5.jpeg',
            width: 300,
            height: 300,
          ),
        ),
      ),
    );
  }
}
