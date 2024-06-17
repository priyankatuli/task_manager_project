import 'package:flutter/material.dart';
import 'package:task_manager_project/ui/widgets/task_items.dart';

class CancelledTaskScreen extends StatefulWidget{
  const CancelledTaskScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CancelledScreenState();
  }

}

class _CancelledScreenState extends State<CancelledTaskScreen>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context,index){
          return const TaskItem();
        },
        itemCount: 5,
      ),
    );

  }

}