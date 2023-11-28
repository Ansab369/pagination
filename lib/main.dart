import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:pagination/application/country_info/bloc/counter_info_bloc.dart';
import 'package:pagination/application/pagination/bloc/pagination_bloc.dart';
import 'package:pagination/domain/core/di/in.dart';
import 'package:pagination/domain/i_country_repo.dart';
import 'package:pagination/firebase_options.dart';
import 'package:pagination/presentation/flag_and_country_info/FlagAndCountryInfo.dart';
import 'package:pagination/presentation/login_view/login_screen.dart';
import 'package:pagination/presentation/pagination_view/pagination_screen.dart';
import 'package:provider/provider.dart';

import 'application/auth/bloc/auth_bloc.dart';
import 'application/country_info_provider/country_info_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureInjection();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<CounterInfoBloc>()),
        BlocProvider(create: (ctx) => PaginationBloc()),
        BlocProvider(create: (ctx) => AuthBloc()),
      ],
      child: MultiProvider(
        providers: [
        ChangeNotifierProvider(create: (_) => CountryProvider()),
      ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LoginScreen(),
        ),
      ),
    );
  }
}
