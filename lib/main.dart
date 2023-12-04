import 'package:finalaone/one.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(home());
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        "afsal":(context) {
          return afsal();
        }
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _count = 0;
  void _incrementcount() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        actions: [
          IconButton(onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>afsal()));
          }, icon: Icon(Icons.navigate_next)),
        ],
        
        backgroundColor: Colors.grey,
        title: Text("DREAM ONE"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$_count count"),
              ElevatedButton(
                  onPressed: () {
                    _incrementcount();
                  },
                  child: Text("ADD")),

                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, "afsal");
                  }, child: Text("click me to next page")),
            ],
          ),
        ),
      ),
    );
  }
}
