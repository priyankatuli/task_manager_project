
import 'package:flutter/material.dart';
import 'package:task_manager_project/ui/screens/add_new_screen_task.dart';
import 'package:task_manager_project/ui/widgets/task_items.dart';
import 'package:task_manager_project/ui/widgets/task_summery_card.dart';



class NewTaskScreen extends StatefulWidget{
  const NewTaskScreen({super.key});

  @override
  State<StatefulWidget> createState() {
       return _NewTaskScreenState();
  }

}

class _NewTaskScreenState extends State<NewTaskScreen>{
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      //appBar: //profileAppBar(),

      body: Padding(
        padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
        child: Column(
                children: [
                  _buildSummerySection(),
                  const SizedBox(height: 10,),
                  Expanded(
                      child: ListView.builder(
                          itemBuilder: (context,index){
                              return const TaskItem();

                          },
                        itemCount: 5,
                      )
                  )
                ],
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onTapAddButton,
        backgroundColor: Colors.purpleAccent.withOpacity(0.4),
        foregroundColor: Colors.black,
        child:const Icon(Icons.add),

      ),
    );

  }

  void _onTapAddButton(){
         Navigator.push(context, MaterialPageRoute(builder: (context) => const AddNewScreenTask(),),);
  }

  Widget _buildSummerySection() {
    return const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:  Row(
                  children: [
                    TaskSummaryCard(
                      count: '34',
                      title: 'New Task',
                    ),
                    TaskSummaryCard(
                      count: '34',
                      title: 'Completed',
                    ),
                    TaskSummaryCard(
                      count: '34',
                      title: 'In Progress',
                    ),
                    TaskSummaryCard(
                      count: '34',
                      title: 'Cancel',
                    )
                  ],
                ),
              );
  }



}



