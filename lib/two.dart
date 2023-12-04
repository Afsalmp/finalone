import 'package:finalaone/main.dart';
import 'package:flutter/material.dart';

class sadik extends StatefulWidget {
  const sadik({super.key});

  @override
  State<sadik> createState() => _sadikState();
}

class _sadikState extends State<sadik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => home()));
                  },
                  child: Text("BACK TO HOME")),
                  ElevatedButton(onPressed: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>home()), (route) => false);
                  }, child: Text("ALL DELETE")),
            ],
          ),
        ),
      ),
    );
  }
}
