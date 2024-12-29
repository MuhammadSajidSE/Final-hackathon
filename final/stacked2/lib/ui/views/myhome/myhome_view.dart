import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked2/ui/views/myhome/myhome_viewcontroller.dart';

class MyhomeView extends StatelessWidget {
  const MyhomeView({super.key});

  @override
  Widget build(BuildContext context) {
       return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => MyhomeViewcontroller(),
        builder: (context, view, child) {
          return Scaffold(
            
            body: Center(child: Text("My home"),),
          );
        });
  }
}