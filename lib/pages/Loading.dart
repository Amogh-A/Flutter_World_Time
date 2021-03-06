import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:World_Time/services/TimeServices.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async{
    List list = await TimeServices().getTimezoneList();
    dynamic result = await Navigator.pushNamed(context, '/list', arguments: {
      'list': list
    });
    String time = await TimeServices().getTime(result['location']);
    String location = result['location'].substring(result['location'].lastIndexOf('/')+1);
    Navigator.pop(context,{
      'location': location,
      'time' : time,
    }
    );
  }

  @override
  void initState(){
    super.initState();
    getData();

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: SpinKitCubeGrid(
        color: Colors.red[900],
        size: 50.0,
      ),
    );
  }
}
