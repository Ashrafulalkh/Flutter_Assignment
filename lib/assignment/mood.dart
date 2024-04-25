import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        title: const Center(child: Text('Photo Gallery',style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}
