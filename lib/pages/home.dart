import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_task/pages/login.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {

              },
              icon: Icon(Icons.leave_bags_at_home))
        ],
        title: Text('Home'),
      ),

      body: Center(child: ElevatedButton(onPressed: () async{
        await FirebaseAuth.instance.signOut();
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Logged out Successfully')));

        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginForm() ));
      }, child: Text('Logged Out')),),
    );
  }
}