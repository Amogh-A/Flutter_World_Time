import 'package:flutter/material.dart';

class List extends StatefulWidget {
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {

  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    print("type1");
    print(data['list'].runtimeType);
    print( data['list'].length);
    print("type2");
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
              onTap: (

                  ){},
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
