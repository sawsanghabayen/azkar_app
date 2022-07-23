import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}
//A=>b=>c
//A=>b=>c=>d
class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    print('initState');
    //TODO: Navigate to HomeScreen after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      // Navigator.pushNamed(context, '/home_screen');
      // Navigator.popAndPushNamed(context, '/home_screen');
      Navigator.pushReplacementNamed(context, '/home_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topCenter,
            end: AlignmentDirectional.bottomCenter,
            colors: [
              Color(0xFFFAD9A1),
              Color(0xFFF37878),
            ],
          ),
        ),
        child: Text(
          'تطبيق المسبحة',
          style: GoogleFonts.almarai(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
