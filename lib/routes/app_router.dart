import 'package:go_router/go_router.dart';
import 'package:groceriesapp/pages/home.dart';
import 'package:groceriesapp/pages/login.dart';
import 'package:groceriesapp/pages/onboarding.dart';
import 'package:groceriesapp/pages/products.dart';
import 'package:groceriesapp/pages/signup.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context,state) => OnBoardingPage()),
    GoRoute(path: '/login', builder: (context,state) => LoginPage()),
    GoRoute(path: '/signup', builder: (context,state) => SignUpPage()),
    GoRoute(path: '/home', builder: (context,state) => HomePage()),
    GoRoute(path: '/products', builder: (context,state) => ProductsPage()),
  ]
);