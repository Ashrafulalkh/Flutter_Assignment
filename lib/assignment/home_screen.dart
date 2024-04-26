import 'package:flutter/material.dart';
import 'package:practice/assignment/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:practice/assignment/mood.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        appBarColor: const Color.fromRGBO(44, 171, 0, 1.0),
        leadingIcon: CupertinoButton(
          padding: EdgeInsets.zero,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              shape: BoxShape.rectangle,
              color: CupertinoColors.activeGreen,
            ),
            child: const Icon(
              CupertinoIcons.back,
              color: CupertinoColors.white,
            ),
          ),
          onPressed: () {
            // Handle back button tap
          },
        ),
        trailingIcon: const Icon(Icons.more_vert,color: Colors.white,),
        title: const Center(child: Text('Photo Gallery',style: TextStyle(color: Colors.white),)),
      ),

      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 1.13,
          ),
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, CupertinoPageRoute(builder: (context) {
                  return const Mood(); //mood page route
                }
                ));
              },
              child: Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      spreadRadius: 10, // Spread radius
                      blurRadius: 10, // Blur radius
                      offset: const Offset(0, 3), // Offset in x and y directions
                    ),
                  ],
                image: const DecorationImage(
                image: AssetImage('images/mood.jpg'),
                fit: BoxFit.cover,
              ),
              
              ),
                child: const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Mood',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                      ),
                      ),
                  ),
                ),
                ),
            ),

            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 10, // Spread radius
                    blurRadius: 10, // Blur radius
                    offset: const Offset(0, 3), // Offset in x and y directions
                  ),
                ],
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                  image: AssetImage('images/aesthetics.jpg'),
                  fit: BoxFit.cover,
                ),

              ),
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Asthetic',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 10, // Spread radius
                    blurRadius: 10, // Blur radius
                    offset: const Offset(0, 3), // Offset in x and y directions
                  ),
                ],
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                  image: AssetImage('images/animals.jpg'),
                  fit: BoxFit.cover,
                ),

              ),
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Animals',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 10, // Spread radius
                    blurRadius: 10, // Blur radius
                    offset: const Offset(0, 3), // Offset in x and y directions
                  ),
                ],
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                  image: AssetImage('images/city.jpg'),
                  fit: BoxFit.cover,
                ),

              ),
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'City',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 10, // Spread radius
                    blurRadius: 10, // Blur radius
                    offset: const Offset(0, 3), // Offset in x and y directions
                  ),
                ],
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                  image: AssetImage('images/travel.jpg'),
                  fit: BoxFit.cover,
                ),

              ),
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Travel',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 10, // Spread radius
                    blurRadius: 10, // Blur radius
                    offset: const Offset(0, 3), // Offset in x and y directions
                  ),
                ],
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                  image: AssetImage('images/sky.jpg'),
                  fit: BoxFit.cover,
                ),

              ),
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Sky',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 10, // Spread radius
                    blurRadius: 10, // Blur radius
                    offset: const Offset(0, 3), // Offset in x and y directions
                  ),
                ],
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                  image: AssetImage('images/road.jpg'),
                  fit: BoxFit.cover,
                ),

              ),
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Road',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 10, // Spread radius
                    blurRadius: 10, // Blur radius
                    offset: const Offset(0, 3), // Offset in x and y directions
                  ),
                ],
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                  image: AssetImage('images/flowers.jpg'),
                  fit: BoxFit.cover,
                ),

              ),
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Flowers',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      )
    );
  }

}