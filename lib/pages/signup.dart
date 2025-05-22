import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceriesapp/widgets/controls/button_action.dart';
import 'package:groceriesapp/widgets/controls/text_field.dart';
import 'package:groceriesapp/widgets/texts/subtitle_section.dart';
import 'package:groceriesapp/widgets/texts/title_section.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Image(
                image: AssetImage('assets/img/login.png'),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
            
                  TitleSection(text: 'Sign Up'),
                  SizedBox(height: 15),
                  SubtitleSection(text: 'Enter your credential to continue', size: 16,),
                  SizedBox(height: 45),                  
                  MyText(texto: 'Username'),
                  SizedBox(height: 30),
                  MyText(texto: 'Email'),
                  SizedBox(height: 30),
                  MyText(texto: 'Password', obscure: true,),
                  SizedBox(height: 20),
                  SubtitleSection(text: 'By continuing you agree to our Terms of Service and Privacy Policy.', size: 14,),
                  SizedBox(height: 30),
                  MyActionButton(text: 'Sing Up',onPressed: ()=> context.push('/home'),),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(fontSize: 14),
                      ),
                      GestureDetector(
                        onTap: () => context.go('/login'),
                        child: Text(
                          ' Login',
                          style: TextStyle(
                            color: Color(0xFF53B175),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
