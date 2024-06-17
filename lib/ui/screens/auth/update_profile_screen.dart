
import 'package:flutter/material.dart';
import 'package:task_manager_project/ui/widgets/background_widget.dart';
import 'package:task_manager_project/ui/widgets/profile_app_bar.dart';
class UpdateProfileScreen extends StatefulWidget{
  const UpdateProfileScreen({super.key});

  @override
  State<StatefulWidget> createState() {
       return  _UpdateProfileScreenState();
  }

}

class  _UpdateProfileScreenState extends State<UpdateProfileScreen>{

  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: profileAppBar(context,true),
          body: BackgroundWidget(
            child: SingleChildScrollView(
               scrollDirection: Axis.vertical,
              child: Form(
                key: _formKey,
                child:  Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 48,),
                      Text('Update Profile',style: Theme.of(context).textTheme.titleLarge),
                      const SizedBox(height: 16,),
                      _buildPhotoPicker(),
                      const SizedBox(height: 8,),
                      TextFormField(
                        controller: _emailTEController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            hintText: 'Email'
                        ),
                      ),
                      const SizedBox(height: 8,),
                      TextFormField(
                        controller: _firstNameTEController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          hintText: 'First Name',
                        ),
                      ),
                      const SizedBox(height: 8,),
                      TextFormField(
                        controller: _lastNameTEController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                            hintText: 'Last Name'
                        ),
                      ),
                      const SizedBox(height: 8,),
                      TextFormField(
                        controller: _mobileTEController,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                            hintText: 'Mobile'
                        ),
                      ),

                      const SizedBox(height: 8,),
                      TextFormField(
                        controller: _passwordTEController,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: const InputDecoration(
                            hintText: 'Password'
                        ),
                      ),
                      const SizedBox(height: 8,),
                      ElevatedButton(onPressed: (){}, child: const Icon(Icons.arrow_circle_right_outlined,color: Colors.white,)),
                      const SizedBox(height: 8,)
                    ],
                  ),
                ),
              )

            ),
          ),
        );
  }

  Widget _buildPhotoPicker() {
    return Container(
                      width: double.maxFinite,
                      height: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white
                      ),
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height:48,
                        width: 100,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8)
                          ),
                        ),
                        alignment: Alignment.center,
                        child:const Text('Photo',style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.white
                        ),),
                      ),
                    );
  }

  @override
  void dispose(){
    _emailTEController.dispose();
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _mobileTEController.dispose();
    _passwordTEController.dispose();
    super.dispose();


  }


}