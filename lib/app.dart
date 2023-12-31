import 'package:exam_mobii/core/global/global_keys.dart';
import 'package:exam_mobii/l10n/l10n.dart';
import 'package:exam_mobii/router/router.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  final GetIt getIt;
  final ThemeData themeData;

  const App({super.key, required this.getIt, required this.themeData});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late AppRouter appRouter;

  @override
  void initState() {
    super.initState();
    appRouter = AppRouter();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider<GetIt>.value(value: widget.getIt)],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          final textScale = MediaQuery.textScaleFactorOf(context);
          final textScaleRange = textScale.clamp(0.9, 1.00);
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: textScaleRange,
              ),
              child: child!);
        },
        key: routerKey,
        routerConfig: appRouter.router,
        theme: widget.themeData,
        localizationsDelegates: const [
          AppLocalization.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppLocalization.delegate.supportedLocales,
      ),
    );
  }
}
