import 'package:flutter/material.dart';
import 'package:todo/profile/view/profile_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Home'),
        actions: [IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(),));
        }, icon: Icon(Icons.person))],
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('WELCOME HOME',style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black),),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(context: context, builder: (context) => taskModal(),);
      },child: Icon(Icons.add),backgroundColor:Colors.blue),
    );
  }

  Container taskModal() {
    return Container(
      padding: EdgeInsets.all(20),
        height: 300,
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Add a task',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: 'Enter your task'
              ),
            ),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: 'Enter task description'
              ),
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(onPressed: () {
                
              }, child: Text('Submit')),
            )
          ],
        ),
      );
  }
}