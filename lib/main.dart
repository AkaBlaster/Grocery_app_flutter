import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/main_page.dart';
import 'package:myapp/widgets/searchBar.dart';
import 'Category.dart';
import 'package:myapp/login_screen.dart';
import './utils/colortheme.dart' as Appcolor;
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        primaryColor: Appcolor.lightyellow,
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainPaige()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.yellow,
      body: Container(
        margin: EdgeInsets.only(top: 150),
        child: Column(
          children: [
            Center(
              child: Image(
                image: AssetImage(
                  'asset/Untitled-1.png',
                ),
                height: 300,
                width: 300,
              ),
            ),
            Column(
              children: [
                Center(
                  child: Container(
                    child: Text(
                      'Grocery App',
                      style: GoogleFonts.alfaSlabOne(
                        fontSize: 28,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
