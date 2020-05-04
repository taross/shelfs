import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shelfs/ui/dashboard_page.dart';

class SigninPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SigninPageState();
}

class SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '書庫のやつ',
                style: GoogleFonts.mPlus1p(
                  fontSize: 32,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              OutlineButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => DashboardPage(),
                    ),
                  );
                },
                child: Text(
                  'サインイン',
                  style: GoogleFonts.mPlus1p(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
