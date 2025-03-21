 import 'package:first_clone/util/Exercise_.dart';
import 'package:first_clone/util/emote_face.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: '' ),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: '' ),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: '' ),
        ]),
      body: SafeArea(
        child: Column(
          children: [
            // Greetings row
             Padding(
               padding: const EdgeInsets.symmetric(horizontal:25.0),
               child: Column(
                           children: [
                 Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'hi, jai!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '23 jan 2025',
                        style: TextStyle(color: Colors.blue[200]),
                      ),
                    ],
                  ),
                  // Notification
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[500],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                ],
                           ),
                       
                           SizedBox(height: 25),
                       
                           // Search bar
                           Container(
                decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.white),
                    SizedBox(width: 5),
                    Text(
                      'Search',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                           ),
                       
                           SizedBox(height: 25),
                       
                           // "How do you feel?" section
                           Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How do you feel?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.more_horiz, color: Colors.white),
                ],
                           ),
                       
                           SizedBox(height: 25),
                       
                           // Four different faces
                           Row(
                children: [
                  Column(
                    children: [
                      Emote(emote: '😞'), 
                      SizedBox(height: 8),
                      Text(
                        'Bad',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(width: 20), 
                  Column(
                    children: [
                      Emote(emote: '🙂'),
                      SizedBox(height: 8),
                      Text(
                        'Fine',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Emote(emote: '😊'),
                      SizedBox(height: 8),
                      Text(
                        'Well',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Emote(emote: '😃'),
                      SizedBox(height: 8),
                      Text(
                        'Excellent',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
                           ),
                           ],
                          ),
             ),
             SizedBox(
              height: 25,
             ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color:Colors.grey[200],
                height: 500,
               child: Center(
                 child: Column(children: [
                  //exercise heading
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Exercises',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      ),
                      Icon(Icons.more_horiz),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  // listview of exercises
                  Expanded(
                    child: ListView(children: [
                      Exercise(
                        icon: Icons.favorite,
                        exerciseName: 'speaking skills',
                        numberOfExercises: 16,
                        color:Colors.orange
                      ),
                       Exercise(
                         icon: Icons.person,
                        exerciseName: 'Reading skills',
                        numberOfExercises: 16,
                        color: Colors.green,
                       ),
                       Exercise(
                         icon: Icons.star,
                        exerciseName: 'writng skills',
                        numberOfExercises: 16,
                        color: Colors.pink
                       ),
                       
                    ],),
                  )
                 
                 ],),
               ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
