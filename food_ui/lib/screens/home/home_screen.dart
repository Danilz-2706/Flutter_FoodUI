import 'package:flutter/material.dart';
import 'package:food_ui/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Column(
            children: [
              Text(
                "Delivery".toUpperCase(), 
                style: Theme.of(context).textTheme.caption!.copyWith(color: kActiveColor,),),
              Text("delisadf".toUpperCase(), style: Theme.of(context).textTheme.subtitle1,)
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed:() {},
            child: const Text("Filter"),
          )
        ],
      ),
      
    );
  }
}