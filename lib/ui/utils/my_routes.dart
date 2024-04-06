import 'package:e_commerce/ui/screens/auth/login/login_screen.dart';
import 'package:e_commerce/ui/screens/auth/register/register_screen.dart';

class MyRoutes {
  static String? initialRoute = LoginScreen.routeName;
  static var myRoutes = {
    LoginScreen.routeName: (_) => const LoginScreen(),
    RegisterScreen.routeName: (_) => const RegisterScreen(),
  };
}
