import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practice/assignment/custom_appbar.dart';

class Mood extends StatelessWidget{
  const Mood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        appBarColor: Colors.green,
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
        title: const Center(child: Text('Mood',style: TextStyle(color: Colors.white),)),
      ),

      body: Column(
        children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 300,
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
                    image: AssetImage('images/mood.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

          const SizedBox(
            height: 8,
          ),

          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                child: Text(
                  'Mood With Nature',
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
                  'Being In Nature, or Even Viewing Scenes of Nature, Reduces Anger, Fear, and Stress And Increases Pleasant Fellings',
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
                    backgroundColor: Colors.green,
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



        ],

      ),


    );
  }
}
