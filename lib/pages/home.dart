import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = 100;
    double _height = 50;
    Color _color = Colors.green;
    BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

    return Center(
      child: Column(children: [
        Row(
          children: [
            AnimatedContainer(
              // Use the properties stored in the State class.
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius,
              ),
              // Define how long the animation should take.
              duration: const Duration(seconds: 1),
              // Provide an optional curve to make the animation feel smoother.
              curve: Curves.fastOutSlowIn,
              child: Column(
                children: const [
                  Padding(padding: EdgeInsets.all(20)),
                  Text(
                    'Blazer',
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
            ).px8(),
          ],
        ),
      ]),
    );
  }
}
