import 'package:finalaone/two.dart';
import 'package:flutter/material.dart';

class afsal extends StatefulWidget {
  const afsal({super.key});

  @override
  State<afsal> createState() => _afsalState();
}

class _afsalState extends State<afsal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>sadik()));
          }, icon: Icon(Icons.navigate_next)),
        ],
        title: Text("FAYIS"),
        backgroundColor: Colors.grey,
      ),
      body: SafeArea(
          child: ListView.separated(
            itemBuilder: (context,index){
              return ListTile(
                title: Text("RAHEEM$index"),
                subtitle: Text("Message$index"),
                trailing: Text("$index:AM"),

                leading: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  
                ),
              );
              

            },
            separatorBuilder: (context,index){
              return Divider();
            },
            itemCount: 50,
          ),
          ),
    );
  }
}
