
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_project/ui/utility/app_color.dart';
import 'package:task_manager_project/ui/widgets/background_widget.dart';

class SignUpScreen extends StatefulWidget{
  const SignUpScreen({super.key});

  @override
  State<StatefulWidget> createState() {

    return _SignUpScreenState();
  }

}


class _SignUpScreenState extends State<SignUpScreen>{

  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: SafeArea(
            child: SingleChildScrollView(
              child:  Padding(padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 100,),
                    Text('Join With Us',style: Theme.of(context).textTheme.titleLarge,),
                    const SizedBox(height: 24,),
                    TextFormField(
                      controller: _emailTEController,
                      keyboardType: TextInputType.emailAddress,
                      decoration:const InputDecoration(
                          hintText: 'Email'
                      ),
                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: _firstNameTEController,
                      decoration:const InputDecoration(
                          hintText: 'First Name'
                      ),
                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: _lastNameTEController,
                      decoration:const InputDecoration(
                          hintText: 'Last Name'
                      ),
                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: _mobileTEController,
                      decoration:const InputDecoration(
                          hintText: 'Mobile'
                      ),
                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: _passwordTEController,
                      decoration:const InputDecoration(
                          hintText: 'Password'
                      ),
                    ),
                    const SizedBox(height: 16,),
                    ElevatedButton(onPressed: (){}, child: const Icon(Icons.arrow_circle_right_outlined)),
                    const SizedBox(height: 36,),
                    _buildBackToSignInSection()
                        ],
                      ),
                    )
                ),
              ),
            )
    );
  }

  Widget _buildBackToSignInSection() {
    return Center(
                    child:
                        RichText(text: TextSpan(
                            style: TextStyle(
                                color: Colors.black..withOpacity(0.9),
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.4
                            ),
                            text: "Have account ? ",
                            children:  [
                              TextSpan(
                                  text: 'Sign In',
                                  style: const TextStyle(
                                      color: AppColors.themeColor
                                  ),
                                  recognizer: TapGestureRecognizer()..onTap =() {
                                    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignInScreen()),);

                                    _onTapSignInButton();
                                  }
                              ),]
                        )

                  ),
            );
  }

  void _onTapSignInButton(){
    Navigator.pop(context);
  }




  @override
  void dispose(){
    super.dispose();

    _emailTEController.dispose();
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _mobileTEController.dispose();
    _passwordTEController.dispose();

  }

}