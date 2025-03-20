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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(children: [

            //greetings row
            Row(
              mainAxisAlignment:  MainAxisAlignment.spaceBetween,
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'hi, jai!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
               Text('23 jan 2025',
               style: TextStyle(color: Colors.blue[200]),),
                ],
              ),
                //notification
                Container(
                  decoration:BoxDecoration(
                    color: Colors.blue[500],
                    borderRadius: BorderRadius.circular(12)
                  ),
                  padding: EdgeInsets.all(12),
                  child: Icon( 
                    Icons.notifications,
                  color: Colors.white,),
                )
            ],
            ),

            SizedBox(
              height: 25,
            ),
            //search bar
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(12),
              child: Row(
                children: [
              Icon(
                Icons.search,
                color: Colors.white,
              ),
              SizedBox(
                width:5
              ),
              Text(
                'Search',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
            ),
            ),

            SizedBox(
              height: 25,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'How do you feel?',
                  style: TextStyle(
                    color:Colors.white,
                    fontSize:18,
                    fontWeight:FontWeight.bold,
                    ),
                ),
                Icon(
                  Icons.more_horiz,
                  color:Colors.white
                ),
              ],
            ),

            SizedBox(
              height: 25,
            ),
             
             //four different faces
             Row(
              children: [
                //bad

                //fine
                
                //well

                //excellent
                ],
             )

           
          ],
          ),
        ),
      )
    );
  }
}