import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {
  const SandBox({super.key});

  @override
  State<SandBox> createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {
  double _margin = 0;
  double _opacity = 1;
  double _width = 200;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(
          seconds: 1,
        ),
        margin: EdgeInsets.all(_margin),
        color: _color,
        width: _width,
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => setState(() => _margin = 50),
              child: const Text('Animate Margin'),
            ),
            ElevatedButton(
              onPressed: () => setState(() => _width = double.infinity),
              child: const Text('Animate Width'),
            ),
            ElevatedButton(
              onPressed: () => setState(() => _color = Colors.green),
              child: const Text('Animate Color'),
            ),
            ElevatedButton(
              onPressed: () => setState(() => _margin = 50),
              child: const Text('Animate container'),
            ),
            AnimatedOpacity(
              opacity: _opacity,
              duration: const Duration(seconds: 2),
              child: TextButton(
                onPressed: (() => setState(() => _opacity = 0)),
                child: const Text('Fade Text'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
