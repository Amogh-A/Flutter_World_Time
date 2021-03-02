import 'package:World_Time/services/TimeServices.dart';
import 'package:flutter/material.dart';

class List extends StatefulWidget {
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {

  Map data = {};

  void updateTime(data, index) async {
    Navigator.pop(context,{
      'location' : data['list'][index],
    });
  }

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose a location"),
        backgroundColor: Colors.red[900],
      ),
      body: ListView.builder(
        itemCount: data['list'].length,
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              onTap: (){
                updateTime(data,index);
              },
              title: Text(
                  data['list'][index].substring(data['list'][index].lastIndexOf('/')+1),
                style: TextStyle(
                  fontSize: 20
                ),
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/kaguya.jpg"),
              ),
            ),
          );
        },
      ),
    );
  }
}
