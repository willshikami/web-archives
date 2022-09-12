import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:web_archives/client/pages/homepage.dart';
import 'package:web_archives/redux/app_state.dart';
import 'package:web_archives/routes/router_generator.dart';
import 'package:web_archives/setup/theme.dart';

void configureApp() {
  setUrlStrategy(PathUrlStrategy());
}

Store<AppState>? store;
void main() async {
  store = Store(initialState: AppState.initial());
  WidgetsFlutterBinding.ensureInitialized();
  // initializeDateFormatting();
  configureApp();
  // setPathUrlStrategy();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store!,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Willard\'s Archives',
        home: const HomePage(),
        theme: appTheme(),
        onGenerateRoute: RouterGenerator.generateRoute,
      ),
    );
  }
}
