import 'package:center_frutas_app/presentation/features/auth/forget_password/forget_password_page.dart';
import 'package:center_frutas_app/presentation/features/auth/siginup/siginup_page.dart';

import '../features/auth/login/login_page.dart';
import 'package:go_router/go_router.dart';
import '../features/home/pages/home_page.dart';

class AppRoutes {
  /// The Initial Page
  static const introLogin = '/intro_login';
  static const onboarding = '/onboarding';

  /* <---- Login, Signup -----> */
  static const login = '/login';
  static const signup = '/signup';
  static const loginOrSignup = '/loginOrSignup';
  static const numberVerification = '/numberVerification';
  static const forgotPassword = '/forgotPassword';
  static const passwordReset = '/passwordReset';
  static const home = '/home';
}

final router = GoRouter(
  // redirect: (context, state) {
  //   final session = Supabase.instance.client.auth.currentSession;
  //   final isLoggingIn = state.fullPath == '/login';

  //   if (session == null && !isLoggingIn) return '/login';
  //   if (session != null && isLoggingIn) return '/home';

  //   return null;
  // },
  initialLocation: AppRoutes.login,
  routes: [
    GoRoute(
      path: AppRoutes.login,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(path: '/', builder: (context, state) => const HomePage()),
    GoRoute(
      path: AppRoutes.signup,
      builder: (context, state) => const SiginupPage(),
    ),
    GoRoute(
      path: AppRoutes.forgotPassword,
      builder: (context, state) => ForgetPasswordPage(),
    ),
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const HomePage(),
    ),
  ],
);
