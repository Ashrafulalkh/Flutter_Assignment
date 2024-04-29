
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/assignment/custom_appbar.dart';

class RoadPage extends StatelessWidget{
  const RoadPage({super.key});

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
            Navigator.pop(context);
          },
        ),
        trailingIcon: const Icon(Icons.more_vert,color: Colors.white,),
        title: const Center(child: Text('Road',style: TextStyle(color: Colors.white),)),
      ),

      body: OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 270,
                        width: double.maxFinite,
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
                            image: AssetImage('images/road.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 5,
                    ),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                          child: Text(
                            'Mood In Road',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const Wrap(
                      alignment: WrapAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(25, 20, 20, 0),
                          child: Text(
                            'Traveling on roads, or simply observing the pathways, alleviates tension, apprehension, and unease, while fostering feelings of freedom and exploration',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 143,vertical: 12),
                              backgroundColor: const Color.fromRGBO(44, 171, 0, 1.0),
                              elevation: 20,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'See More',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 15),
                          child: Text(
                            'Suggestions',
                            style: TextStyle(
                              color: Color.fromRGBO(44, 171, 0, 1.0),
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 5),
                          child: Container(
                            height: 160,
                            width: 165,
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
                                image: AssetImage('images/dawn.jpg'),
                                fit: BoxFit.cover,
                              ),

                            ),
                            child: const Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text(
                                  'Dawn',
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

                        const SizedBox(
                          width: 15,
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 5),
                          child: Container(
                            height: 160,
                            width: 165,
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
                                image: AssetImage('images/leaves.jpg'),
                                fit: BoxFit.cover,
                              ),

                            ),
                            child: const Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text(
                                  'Leaves',
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
                      ],
                    ),

                  ],

                ),
              );
            }else {
              return SingleChildScrollView(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: 300,
                        height: 265,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 10,
                              blurRadius: 10,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          image: const DecorationImage(
                            image: AssetImage('images/road.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Title
                          const Padding(
                            padding: EdgeInsets.fromLTRB(25, 10, 0, 0),
                            child: Text(
                              'Mood In Road',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),

                          // Description
                          const Padding(
                            padding: EdgeInsets.fromLTRB(25, 0, 20, 0),
                            child: Text(
                              'Traveling on roads, or simply observing the pathways, alleviates tension, apprehension, and unease, while fostering feelings of freedom and exploration',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),

                          // Button
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 170, vertical: 12),
                                backgroundColor: const Color.fromRGBO(44, 171, 0, 1.0),
                                elevation: 20,
                              ),
                              onPressed: () {},
                              child: const Text(
                                'See More',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),

                          const Padding(
                            padding: EdgeInsets.fromLTRB(30, 0, 0, 15),
                            child: Text(
                              'Suggestions',
                              style: TextStyle(
                                color: Color.fromRGBO(44, 171, 0, 1.0),
                                fontSize: 18,
                              ),
                            ),
                          ),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 5),
                                child: Container(
                                  height: 160,
                                  width: 165,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 10,
                                        blurRadius: 10,
                                        offset: const Offset(0, 3),
                                      ),
                                    ],
                                    image: const DecorationImage(
                                      image: AssetImage('images/dawn.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: Text(
                                        'Dawn',
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
                              const SizedBox(width: 15),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 0, 5),
                                child: Container(
                                  height: 160,
                                  width: 165,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 10,
                                        blurRadius: 10,
                                        offset: const Offset(0, 3),
                                      ),
                                    ],
                                    image: const DecorationImage(
                                      image: AssetImage('images/leaves.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: Text(
                                        'Leaves',
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
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );

            }
          }
      ),




    );
  }
}
