import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:satthi/blocs/auth/bloc/auth_bloc.dart';

import 'repositories/auth_repository.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const SatthiApp());
}

class SatthiApp extends StatelessWidget {
  const SatthiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(authRepository: AuthRepository()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Satthi',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: LoginScreen(),
      ),
    );
  }
}
