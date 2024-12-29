import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked2/ui/views/signin/signin_viewcontroller.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => SigninViewcontroller(),
        builder: (context, view, child) {
          return Scaffold(
            
            body: Center(child: Text("My Signin page"),),
          );
        });
  }
}
