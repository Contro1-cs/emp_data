import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emp_data/add_page.dart';
import 'package:emp_data/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance.collection('users').snapshots();


  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
            var bckColor;
            if(data['color'] == 'green'){
              bckColor = Colors.green;
            } else if (data['color'] == 'red') {
              bckColor = Colors.red;
            }
            return ListTile(
              contentPadding:const EdgeInsets.all(10),
              leading: CircleAvatar(backgroundColor: bckColor,),
              title: Text(data['name']),
              subtitle: Text(data['role']),
            );
          }).toList(),
        );
      },
    );
  }
}