import 'package:flutter/material.dart';

class LoginRespPage extends StatelessWidget {
  const LoginRespPage({super.key});

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
                  Text(
                    'Login',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Enter your emails and password',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 45),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email', // Nombre del campo que flota
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password', // Nombre del campo que flota
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Text('Forgot Password ?'),
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF53B175),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('Log In', style: TextStyle(fontSize: 18)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account? ',
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        'Singup',
                        style: TextStyle(
                          color: Color(0xFF53B175),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
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
