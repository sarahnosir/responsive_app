import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model/dashborditem_model.dart';

List dashboreditems = [
  DashboardItemModel(
      'Videos', CupertinoIcons.play_rectangle, Colors.deepOrange),
  DashboardItemModel('Analytics', CupertinoIcons.graph_circle, Colors.green),
  DashboardItemModel('Audience', CupertinoIcons.person_2, Colors.purple),
  DashboardItemModel('Comments', CupertinoIcons.chat_bubble_2, Colors.brown),
  DashboardItemModel(
      'Revenue', CupertinoIcons.money_dollar_circle, Colors.indigo),
  DashboardItemModel('Upload', CupertinoIcons.add_circled, Colors.teal),
  DashboardItemModel('About', CupertinoIcons.question_circle, Colors.blue),
  DashboardItemModel('Contact', CupertinoIcons.phone, Colors.pinkAccent),
];
