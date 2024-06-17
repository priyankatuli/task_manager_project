import 'package:flutter/material.dart';
import 'package:task_manager_project/ui/widgets/task_items.dart';

class CompletedScreen extends StatefulWidget{
  const CompletedScreen({super.key});


  @override
  State<StatefulWidget> createState() {
    return _NewTaskScreenState();
  }

}

class _NewTaskScreenState extends State<CompletedScreen>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //appBar: profileAppBar(),
      body: ListView.builder(
        itemBuilder: (context,index){
          return const TaskItem();
        },
        itemCount: 5,
      ),
    );

  }

}