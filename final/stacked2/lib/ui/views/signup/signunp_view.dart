import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked2/ui/views/signup/signup_viewcontroller.dart';

class SignunpView extends StatelessWidget {
  const SignunpView({super.key});

  @override
  Widget build(BuildContext context) {
       return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => SignupViewcontroller(),
        builder: (context, view, child) {
          return Scaffold(
            
            body: Center(child: Column(
              children: [
                Text("Signup")
              ],
            ),),
          );
        });
  }
}