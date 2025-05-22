import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceriesapp/widgets/controls/button_action.dart';
import 'package:groceriesapp/widgets/controls/text_field.dart';
import 'package:groceriesapp/widgets/texts/subtitle_section.dart';
import 'package:groceriesapp/widgets/texts/title_section.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                  TitleSection(text: 'Login'),
                  SizedBox(height: 15),
                  SubtitleSection(
                    text: 'Enter your emails and password',
                    size: 16,
                  ),
                  SizedBox(height: 45),
                  MyText(texto: 'Email'),
                  SizedBox(height: 30),
                  MyText(texto: 'Password', obscure: true),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text('Forgot Password ?'),
                  ),
                  SizedBox(height: 30),
                  MyActionButton(text: 'Log In', onPressed: ()=> context.push('/home'),),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account? ',
                        style: TextStyle(fontSize: 14),
                      ),
                      GestureDetector(
                        onTap: () => context.go('/signup'),
                        child: Text(
                          'Singup',
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
