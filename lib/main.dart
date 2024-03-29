import 'package:animations_flutter/providers/IndexMenu.dart';
import 'package:animations_flutter/providers/autres_animations/ChangeProprieterContainer.dart';
import 'package:animations_flutter/providers/autres_animations/AnimatedCrossFade.dart';
import 'package:animations_flutter/providers/autres_animations/LeAnimatedDefaultTextStyle.dart';
import 'package:animations_flutter/providers/autres_animations/ChangeOpacite.dart';
import 'package:animations_flutter/providers/autres_animations/AnimatedPositionned.dart';
import 'package:animations_flutter/providers/autres_animations/AnimatedSize.dart';
import 'package:animations_flutter/vues/pages/MyApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';

void main()async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create:(_)=>IndexMenu()),
          ChangeNotifierProvider(create: (_)=>ChangeProprieterContainer()),
          ChangeNotifierProvider(create: (_)=>ChangeOpacite()),
          ChangeNotifierProvider(create: (_)=>LeAnimatedCrossFades()),
          ChangeNotifierProvider(create: (_)=>LeAnimatedDefaultTextStyle()),
          ChangeNotifierProvider(create: (_)=>LeAnimatedSize()),
          ChangeNotifierProvider(create: (_)=>AnimatedPositioneds()),
        ],
        child:const MyApp(),
      )
  );
  FlutterNativeSplash.remove();
}
