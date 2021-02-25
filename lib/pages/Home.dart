import 'package:flutter/material.dart';
import 'package:World_Time/services/TimeServices.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,120,0,0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FlatButton.icon(onPressed: (){
                  Navigator.pushNamed(context, '/loading');
                  //TimeServices().getTime("Africa/Abidjan");
                }, icon: Icon(Icons.location_on_outlined), label: Text("Edit Location")),
                SizedBox(height: 30,),
                Center(
                  child: Text(
                      "Berlin",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white
                    ),
                  ),
                ),
                Center(
                  child: Text(
                      "1:30 PM",
                    style: TextStyle(
                      fontSize: 70,
                      color: Colors.white,

                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
