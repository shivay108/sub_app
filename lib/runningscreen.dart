import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class StepsGoalWidget extends StatelessWidget {
  final int currentSteps;
  final int goalSteps;

  const StepsGoalWidget({Key? key, required this.currentSteps, required this.goalSteps}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double progress = currentSteps / goalSteps;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Running and Walking Tracker'),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.directions_walk, size: 30),
              const SizedBox(height: 50),
              Text('$currentSteps Steps', style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 120),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 570), // Adjust this value as needed
            child: SizedBox(
              height: 180,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 300.0,
                  viewportFraction: 1.0, // Adjust this value to change spacing
                ),
                items: [
                  Colors.blue,
                  Colors.green,
                  Colors.red,
                  Colors.yellow,
                  Colors.orange,
                ].map((Color color) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 18.0),
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(30.0), // Adjust the radius as needed
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ),

          SizedBox(
            width: 40,
            height: 150,
            child: Stack(
              children: [
                Transform.scale(
                  scale: 5.0, // Increase this value to increase the size
                  child: CircularProgressIndicator(
                    value: progress,
                    strokeWidth: 4,
                    backgroundColor: Colors.grey,
                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                ),
                Center(
                  child: SizedBox(
                    height: 1000, // Set the desired height here
                    child: Text(
                      '${(progress * 100).toInt()}%',
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),

              ],
            ),
          ),

          Positioned(
            bottom: 535,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Goal: $goalSteps',
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
          const Positioned(
            bottom: 240, // Adjust this value to move the Row up or down
            left: 0, // Adjust this value to move the Row horizontally
            right: 0, // Adjust this value to move the Row horizontally
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.local_fire_department_sharp, size: 48.0),
                        Text(
                          '0 kcal',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Calories'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.location_on, size: 48.0),
                        Text(
                          '0 km',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Distance'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.watch, size: 48.0),
                        Text(
                          '0 min',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Time'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 390),
            child: SizedBox(
              width: 401,
              height: 100,
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Total Steps',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.directions_walk, size: 40),
                          SizedBox(width: 100),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '  0',
                                style: TextStyle(color: Colors.red, fontSize: 24),
                              ),
                              Text(
                                'Steps',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(width: 100),
                          Icon(
                            Icons.arrow_right,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 610),
            child: SizedBox(
              width: 401,
              height: 100,
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Total Calories',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.local_fire_department_outlined, size: 40),
                          SizedBox(width: 100),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '  0',
                                style: TextStyle(color: Colors.red, fontSize: 24),
                              ),
                              Text(
                                'Steps',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(width: 100),
                          Icon(
                            Icons.arrow_right,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
