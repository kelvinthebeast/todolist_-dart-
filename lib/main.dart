import 'package:flutter/material.dart';
import 'package:todolist/widget/card_body_widget.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("TODO LIST 123", style: TextStyle(fontSize: 30)),
        backgroundColor: Colors.blue[600],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical:20),
        child: Column(
          // create a reactangle shape
          children: [
            CardBody(),
            CardBody(),
            CardBody()
            
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(context: context, builder: (BuildContext content) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            height: double.infinity,
            width: double.infinity,
            color: Colors.amber,
            child: Column(
              children:  [TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, child: Text("Add task")))

            ],),
          );
        });
      },
      child: const Icon(Icons.add, size: 40),
      backgroundColor: Colors.blue[600],
      
      ),
      
    );
  }
}

