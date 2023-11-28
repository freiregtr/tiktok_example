import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktok_example/config/theme/app_theme.dart';
import 'package:tiktok_example/presentation/providers/discover_provider.dart';
import 'package:tiktok_example/presentation/screen/discover/discover_scren.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  
  Widget build(BuildContext context) {
    return MultiProvider(

      // lista de providers
      providers: [

        ChangeNotifierProvider(
          // operador lazy
          lazy: false,

          // loadNextPage operador de cascada
          create: (_) => DiscoverProvider()..loadNextPage() 
        ),

      ],

      child: MaterialApp(
        
        // titulo de la app y barra debug
        title: 'TokTok',
        debugShowCheckedModeBanner: false,
    
        // theme
        theme: AppTheme().getTheme(),
    
        home: const DiscoverScreen()
      ),
    );
  }
}