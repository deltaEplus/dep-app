import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:delta_app/bindings/auth_binding.dart';
import 'package:delta_app/bindings/home_bindings.dart';
import 'package:delta_app/bindings/splash_binding.dart';
import 'package:delta_app/views/auth.dart';
import 'package:delta_app/views/home.dart';
import 'package:delta_app/views/splash.dart';
import 'package:delta_app/constants/navigation_routes.dart';

class NavigationPages {
  static List<GetPage<dynamic>> getPages() => [
        GetPage(
          name: NavigationRoutes.main,
          page: () => const HomePage(),
          binding: HomeBindings(),
        ),
        GetPage(
          name: NavigationRoutes.authRoute,
          page: () => const AuthPage(),
          binding: AuthBindings(),
        ),
        GetPage(
          name: NavigationRoutes.splashRoute,
          page: () => const SplashPage(),
          binding: SplashBindings(),
        ),
      ];
}
