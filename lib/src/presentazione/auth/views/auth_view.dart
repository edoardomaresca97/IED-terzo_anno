import 'package:flutter/material.dart';

class AuthConnector extends StatelessWidget {
  const


  widget 

  AuthConnector({super.key});@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: ColoredBox(
            color: Colors.blue.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Column( 
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('Logo'),
                  Text('Description'),
                  SizedBox.shrink(),
                ],
                ),
              ),
            )
          )
          )
        // Form
        Expanded(child: Column(children: [
          const SizedBox.shrink(),
          Column(
            children: [
              const Text('get started'),
              Container()
            ],
          )
          const Column(
            children: [
              Text('Ied Exam'),
              Text('Privacy Policy'),
            ],
          )
        ],))
        ],
      )
    );
  }






}

