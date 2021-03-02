import 'package:flutter/material.dart';
import 'package:World_Time/services/TimeServices.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

const dataa = {
  'location': "Location",
  'time': "Time"
};

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isEmpty? dataa: data;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,120,0,0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FlatButton.icon(onPressed: () async{
                   dynamic result = await Navigator.pushNamed(context, '/loading');
                   if(result!=null){
                     setState(() {
                       data = result;
                     });
                   }
                  //TimeServices().getTime("Africa/Abidjan");
                }, icon: Icon(Icons.location_on_outlined), label: Text("Edit Location")),
                SizedBox(height: 30,),
                Center(
                  child: Text(
                      data['location'],
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white
                    ),
                  ),
                ),
                Center(
                  child: Text(
                      data['time'],
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
