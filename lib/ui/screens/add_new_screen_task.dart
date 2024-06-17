import 'package:flutter/material.dart';
import 'package:task_manager_project/ui/widgets/profile_app_bar.dart';

class AddNewScreenTask extends StatefulWidget{
  const AddNewScreenTask({super.key});

  @override
  State<StatefulWidget> createState() {
       return _AddNewScreenTaskState();
  }

}

class _AddNewScreenTaskState extends State<AddNewScreenTask>{

  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _descriptionTEController = TextEditingController();

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: profileAppBar(context),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: _formKey,
                child:  Column(
                  children: [
                    TextFormField(
                      controller: _titleTEController,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                          hintText: 'Title'
                      ),
                      validator: (String ? value){
                        if(value?.trim().isEmpty ?? true ){
                             return 'Enter your title';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: _descriptionTEController,
                      maxLines: 4,
                      decoration: const InputDecoration(
                          hintText: 'Description'
                      ),
                      validator: (String ? value){
                        if(value?.trim().isEmpty ?? true){
                          return 'Enter your description';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16,),
                    ElevatedButton(onPressed: (){}, child: const Text('Add')),
                  ],
                ),
              )

            ),
          ),
        );
  }

  @override
  void dispose(){
    _titleTEController.dispose();
    _descriptionTEController.dispose();
    super.dispose();


  }

}