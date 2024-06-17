import 'package:flutter/material.dart';
import 'package:task_manager_project/ui/widgets/task_items.dart';

class InProgressScreen extends StatefulWidget{
  const InProgressScreen({super.key});


  @override
  State<StatefulWidget> createState() {
    return _NewTaskScreenState();
  }

}

class _NewTaskScreenState extends State<InProgressScreen>{
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