import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:World_Time/Constants.dart';

class TimeServices{

  Future <List> getTimezoneList() async {
    Response response = await get(Constants().TIMEZONE_LIST_URL);
    return jsonDecode(response.body);
  }

  void getTime(String path) async{
    Response response = await get(Constants().TIME_BASE_URL + path);
    Map data = jsonDecode(response.body);
    DateTime now = DateTime.parse(data['utc_datetime']).add(Duration(hours: int.parse(data['utc_offset'].substring(1,3)),minutes: int.parse(data['utc_offset'].substring(4))));
    print(now);
  }

}