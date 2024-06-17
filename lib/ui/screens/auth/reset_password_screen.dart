
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_project/ui/screens/auth/sign_in_screen.dart';
import 'package:task_manager_project/ui/utility/app_color.dart';
import 'package:task_manager_project/ui/widgets/background_widget.dart';

class ResetPasswordScreen extends StatefulWidget{
  const ResetPasswordScreen({super.key});

  @override
  State<StatefulWidget> createState() {

    return _ResetPasswordScreenState();
  }

}


class _ResetPasswordScreenState extends State<ResetPasswordScreen>{


  final TextEditingController _passwordTEController = TextEditingController();
  final TextEditingController _confirmPasswordEController = TextEditingController();

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
                    Text('Set Password',style: Theme.of(context).textTheme.titleLarge,),
                    const SizedBox(height: 10,),
                    Text('Minimum length password 8 character with latter and number combination',
                    style: Theme.of(context).textTheme.bodySmall
                    ),
                    const SizedBox(height: 24,),
                    TextFormField(
                      controller: _passwordTEController,
                      keyboardType: TextInputType.visiblePassword,
                      decoration:const InputDecoration(
                          hintText: 'Password'
                      ),
                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: _confirmPasswordEController,
                      decoration:const InputDecoration(
                          hintText: 'Confirm Password'
                      ),
                    ),
                    const SizedBox(height: 16,),
                    ElevatedButton(onPressed: (){
                        _onTapConfirmButton();
                    }, child: const Text('Confirm')),
                    const SizedBox(height: 36,),
                    _buildHaveAccount(),
                  ],
                ),
              ),
            )
        ),
      ),
    );
  }

  Widget _buildHaveAccount() {
    return Center(
                    child:
                        RichText(text: TextSpan(
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.8),
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.4
                            ),
                            text: "Have Account? ",
                            children:  [
                              TextSpan(
                                  text: 'Sign In',
                                  style: const TextStyle(
                                      color: AppColors.themeColor
                                  ),
                                  recognizer: TapGestureRecognizer()..onTap =() {
                                    _onTapSignInButton();
                                  }
                              ),
                            ]
                        ))
                  );
  }

  void _onTapSignInButton(){

    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const SignInScreen()), (route) => false);
  }

  void _onTapConfirmButton(){
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const SignInScreen()), (route) => false);
  }

  @override
  void dispose(){
    super.dispose();

    _passwordTEController.dispose();
    _confirmPasswordEController.dispose();



  }

}