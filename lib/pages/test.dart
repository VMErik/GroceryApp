import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceriesapp/widgets/controls/button_action.dart';
import 'package:groceriesapp/widgets/texts/onboarding_subtitle.dart';
import 'package:groceriesapp/widgets/texts/onboarding_title.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image(
              image: AssetImage('assets/img/onboarding.png'),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            // width: double.infinity,
            bottom: 120,
            right: 1,
            left: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  OnBoardingTitle(text: 'Welcome'),
                  OnBoardingTitle(text: 'to our store'),
                  OnBoardingSubtitle(text: 'Get your groceries in as fast as one hour'),
                  SizedBox(height: 20,),
                  MyActionButton(text: 'Get Started',onPressed: ()=> context.push('/login'),)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
