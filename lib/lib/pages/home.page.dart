import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  //sign out
  void signUserOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 46, 160, 50),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 46, 160, 50),
        actions: [
          IconButton(onPressed: signUserOut, icon: Icon(Icons.logout_outlined))
        ],
      ),
      body: Center(
        child: Text("Logged in as " + user!.email!),
      ),
    );
  }
}
