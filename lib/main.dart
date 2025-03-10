import 'package:book_box/core/theme/theme_cubit/theme_cubit.dart';
import 'package:book_box/di/serivce_locater.dart';
import 'package:book_box/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setup();

  runApp(const BookBoxApp());
}

class BookBoxApp extends StatelessWidget {
  const BookBoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, state) => ScreenUtilInit(
          designSize: const Size(360, 690),
          splitScreenMode: true,
          minTextAdapt: true,
          builder: (context, child) => MaterialApp.router(
            theme: BlocProvider.of<ThemeCubit>(context).getTheme(),
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouter.router,
          ),
        ),
      ),
    );
  }
}
