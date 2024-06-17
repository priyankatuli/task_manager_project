import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_manager_project/ui/screens/auth/sign_in_screen.dart';
import 'package:task_manager_project/ui/utility/assets_path.dart';
import 'package:task_manager_project/ui/widgets/background_widget.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() {
      return  _SplashScreenState();
  }

}

class _SplashScreenState extends State<SplashScreen> {
  @override


  void initState(){
    super.initState();
    _moveToNextScreen();

  }


  Future<void> _moveToNextScreen() async{
     await Future.delayed(const Duration(seconds: 2));

    if(mounted){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignInScreen()));
    }}






  Widget build(BuildContext context) {
       return Scaffold(
         body: BackgroundWidget(
           child: Center(
             child: SvgPicture.asset(AssetPaths.logoSvg,
               width: 140,
             ),
           ),
         )

       );
  }
}