import 'package:flutter/cupertino.dart';
import 'package:web_archives/routes/router.dart';
import 'package:web_archives/client/pages/homepage.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //Use this incase we're passing down args
    // final dynamic args = settings.arguments;

    switch (settings.name) {
      case Routes.home:
        return CupertinoPageRoute<HomePage>(
          builder: (_) => const HomePage(),
        );
      // case Routes.notifications:
      //   return MaterialPageRoute<NotificationsPage>(
      //     builder: (_) => NotificationsPage(),
      //   );
      default:
        return _home();
    }
  }

  static Route<dynamic> _home() {
    return CupertinoPageRoute<HomePage>(
      builder: (_) => const HomePage(),
    );
  }
}
