import 'package:flutter/material.dart';
import 'package:flutter_amazone_clone/common/widgets/bottom_nav.dart';
import 'package:flutter_amazone_clone/constants/global_variables.dart';
import 'package:flutter_amazone_clone/features/admin/screens/admin_screen.dart';
import 'package:flutter_amazone_clone/features/auth/screens/auth_screen.dart';
import 'package:flutter_amazone_clone/features/auth/services/auth_service.dart';
import 'package:flutter_amazone_clone/models/user.dart';
import 'package:flutter_amazone_clone/providers/user_provider.dart';
import 'package:flutter_amazone_clone/router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amazone clone',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: user.token.isNotEmpty
          ? user.type == 'user'
              ? const BottomNav()
              : AdminScreen()
          : const AuthScreen(),
    );
  }
}
