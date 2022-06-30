import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {






  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Progress HUD "),
      ),
      body: ProgressHUD(
        child: Builder(
          builder: (context) => Center(
            child: Column(
              children: <Widget>[
                TextButton(
                  child: Text('Show for a second'),
                  onPressed: () {
                    final progress = ProgressHUD.of(context);
                    progress?.show();
                    Future.delayed(Duration(seconds: 1), () {
                      progress?.dismiss();
                    });
                  },
                ),
                TextButton(
                  child: Text('Show with text'),
                  onPressed: () {
                    final progress = ProgressHUD.of(context);
                    progress?.showWithText('Loading...');
                    Future.delayed(Duration(seconds: 1), () {
                      progress?.dismiss();
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
