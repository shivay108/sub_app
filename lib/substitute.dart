import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Substitute extends StatefulWidget {
  const Substitute({Key? key}) : super(key: key);

  @override
  _SubstituteState createState() => _SubstituteState();
}

class _SubstituteState extends State<Substitute> {
  String selectedForm = 'Select Form';
  String selectedStrength = 'Select strength';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          elevation: 5,
          title: const Text(''),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Handle menu button press
            },
          ),
          actions: [
            Container(
              width: 300,
              height: 33,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: DropdownButton<String>(
                hint: const Text(
                  '                          Profile',
                  style: TextStyle(color: Colors.black),
                ),
                icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
                underline: const SizedBox(),
                onChanged: (String? newValue) {
                  // Handle profile selection
                },
                items: <String>['Profile 1', 'Profile 2', 'Profile 3']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Row(
                      children: [
                        const Icon(Icons.account_circle),
                        const SizedBox(width: 140),
                        Text(
                          value,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                // Handle notifications button press
              },
            ),
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.white],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                SizedBox(
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
                const SizedBox(height: 20),
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: 350,
                    height: 35,
                    color: Colors.white70,
                    child: const Row(
                      children: [
                        Expanded(child: Text('     ALTERNATE MEDICINE CHECKER')),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white70,
                  ),
                  width: 350,
                  height: 35,
                  child: const Center(
                    child: Text(
                      'Check the substitute of medicine',
                      style: TextStyle(
                        fontSize: 18, // You can adjust the font size as needed
                        fontWeight: FontWeight.bold, // Making the text bold
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: 350,
                    height: 35,
                    color: Colors.white70,
                    child: Stack(
                      children: [
                        Center(
                          child: Text(
                            selectedForm,
                            style: TextStyle(
                              color: selectedForm == 'Select Form' ? Colors.black54 : Colors.black,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: PopupMenuButton<String>(
                            icon: const Icon(Icons.arrow_drop_down),
                            itemBuilder: (BuildContext context) => [
                              const PopupMenuItem(
                                value: 'Tablet',
                                child: Text('Tablet'),
                              ),
                              const PopupMenuItem(
                                value: 'Capsule',
                                child: Text('Capsule'),
                              ),
                              const PopupMenuItem(
                                value: 'Injection',
                                child: Text('Injection'),
                              ),
                              const PopupMenuItem(
                                value: 'Cream',
                                child: Text('Cream'),
                              ),
                            ],
                            onSelected: (String value) {
                              setState(() {
                                selectedForm = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 1),
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: 350,
                    height: 35,
                    color: Colors.white70,
                    child: Stack(
                      children: [
                        Center(
                          child: Text(
                            selectedStrength,
                            style: TextStyle(
                              color: selectedStrength == 'Select Strength' ? Colors.black54 : Colors.black,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: PopupMenuButton<String>(
                            icon: const Icon(Icons.arrow_drop_down),
                            itemBuilder: (BuildContext context) => [
                              const PopupMenuItem(
                                value: '10mg',
                                child: Text('10mg'),
                              ),
                              const PopupMenuItem(
                                value: '20mg',
                                child: Text('20mg'),
                              ),
                              const PopupMenuItem(
                                value: '50mg',
                                child: Text('50mg'),
                              ),
                              const PopupMenuItem(
                                value: '100mg',
                                child: Text('100mg'),
                              ),
                            ],
                            onSelected: (String value) {
                              setState(() {
                                selectedStrength = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 1),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white70,
                  ),
                  width: 350,
                  height: 35,
                  child: const Center(
                    child: Text(
                      'By Medicine Name',
                      style: TextStyle(
                        fontSize: 18, // You can adjust the font size as needed
                        fontWeight: FontWeight.bold, // Making the text bold
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: 350,
                    height: 35,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () {
                            Fluttertoast.showToast(
                              msg: "No medicine found",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0,
                            );
                            // Handle search icon press
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white70,
                  ),
                  width: 350,
                  height: 35,
                  child: const Center(
                    child: Text(
                      'By Salt Name',
                      style: TextStyle(
                        fontSize: 18, // You can adjust the font size as needed
                        fontWeight: FontWeight.bold, // Making the text bold
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: 350,
                    height: 35,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '                                Salt name',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () {
                            // Handle search icon press
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                  // Navigate to home
                },
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  // Handle add button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  // Handle settings button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.account_circle),
                onPressed: () {
                  // Handle account button press
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
