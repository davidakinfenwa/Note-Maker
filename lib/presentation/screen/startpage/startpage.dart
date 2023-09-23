import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              label: Text('username'),
              enabledBorder: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10.h,),
          const  TextField(
              obscureText:  true,
            decoration: InputDecoration(
              label: Text('passward'),
              enabledBorder: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10.h,),
          ElevatedButton(onPressed: (){}, child:const Text('Login'))
    
        ],
      ),
    );
  }
}