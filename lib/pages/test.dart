import 'package:flutter/material.dart';
import 'package:groceriesapp/widgets/controls/button_action.dart';
import 'package:groceriesapp/widgets/controls/text_field.dart';
import 'package:groceriesapp/widgets/texts/subtitle_section.dart';
import 'package:groceriesapp/widgets/texts/title_section.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 250,
              child: Image(image: AssetImage('assets/img/login.png'), fit: BoxFit.cover,),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleSection(text: 'Login'),
                  SubtitleSection(text: 'Enter your email and password', size: 16),
                  SizedBox(height: 45,),
                  MyText(texto: 'Email'),
                  SizedBox(height: 40,),
                  MyText(texto: 'Password', obscure: true,),
                  SizedBox(height: 16,),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text('Forgot Password ?')),
                  SizedBox(height: 16,),

                  MyActionButton(text: 'Log In', onPressed: (){})
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
