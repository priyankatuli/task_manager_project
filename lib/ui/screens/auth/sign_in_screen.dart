
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_project/ui/screens/auth/email_verification_screen.dart';
import 'package:task_manager_project/ui/screens/auth/sign_up_screen.dart';
import 'package:task_manager_project/ui/screens/main_bottom_navigation_bar.dart';
import 'package:task_manager_project/ui/utility/app_color.dart';
import 'package:task_manager_project/ui/widgets/background_widget.dart';

class SignInScreen extends StatefulWidget{
  const SignInScreen({super.key});

  @override
  State<StatefulWidget> createState() {

    return _SignInScreenState();
  }

}


class _SignInScreenState extends State<SignInScreen>{

  final TextEditingController _nameTEController = TextEditingController();
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
                     Text('Get Started With',style: Theme.of(context).textTheme.titleLarge,),
                     const SizedBox(height: 24,),
                     TextFormField(
                       controller: _nameTEController,
                       keyboardType: TextInputType.emailAddress,
                       decoration:const InputDecoration(
                           hintText: 'Email'
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
                     ElevatedButton(onPressed: (){
                       _onTapNextButton();
                     }, child: const Icon(Icons.arrow_circle_right_outlined)),
                     const SizedBox(height: 36,),
                     Center(
                       child: Column(
                         children: [
                           TextButton(onPressed: (){
                             _onTapForgotPasswordButton();
                           },
                             child: const Text('Forgot Password?'),

                           ),
                           RichText(text: TextSpan(
                               style: TextStyle(
                                   color: Colors.black.withOpacity(0.8),
                                   fontWeight: FontWeight.w600,
                                   letterSpacing: 0.4
                               ),
                               text: "Don't have an account? ",
                               children:  [
                                 TextSpan(
                                     text: 'Sign Up',
                                     style: const TextStyle(
                                         color: AppColors.themeColor
                                     ),
                                     recognizer: TapGestureRecognizer()..onTap =() {
                                           _onTapSignUpButton();
                                     }
                                 ),
                               ]
                           ))
                         ],
                       ),
                     )
                   ],
                 ),
               ),
             )
           ),
         ),
       );
  }

  void _onTapSignUpButton(){
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => const SignUpScreen(),),
    );
  }

void _onTapForgotPasswordButton(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const EmailVerificationScreen(),),);
}

void _onTapNextButton(){

    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const MainBottomNavigationBar()), (route) =>true);
}

  @override
  void dispose(){
    super.dispose();
    _nameTEController.dispose();
    _passwordTEController.dispose();



  }

}