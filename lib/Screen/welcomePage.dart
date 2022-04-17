import 'package:etnafes_1/Screen/signUpPage.dart';
import 'package:flutter/material.dart';
import 'loginPage.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  //@override

  Widget _submitButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Color(0xff44B33E).withAlpha(100),
                  offset: Offset(2, 4),
                  blurRadius: 8,
                  spreadRadius: 2)
            ],
            color: Colors.grey),
        child: Text(
          'login',
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
    );
  }

  Widget _signUpButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpPage()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Color(0xff44B33E).withAlpha(100),
                  offset: Offset(2, 4),
                  blurRadius: 8,
                  spreadRadius: 2)
            ],
            color: Colors.grey),
        child: Text(
          'Register now',
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
    );
  }

  Widget _image() {
    return Image(
      image: AssetImage(
          'assets/image/food1.png'), //! the image you wanted here wasn't in assets/images folder, so i picked one that was here
      height: 250,
      width: 400,
      fit: BoxFit.cover,
    );
  }

  // Widget _title() {
  //   return RichText(
  //       textAlign: TextAlign.center,
  //       text: TextSpan(
  //         text: 'ET',
  //         style: GoogleFonts.portLligatSans(
  //           textStyle: Theme.of(context).textTheme.headline1,
  //           fontSize: 40,
  //           fontWeight: FontWeight.w700,
  //           color: Colors.white,
  //         ),
  //         children: [
  //           TextSpan(
  //             text: 'NAF',
  //             style: TextStyle(color: Colors.black, fontSize: 40),
  //           ),
  //           TextSpan(
  //             text: 'ES',
  //             style: TextStyle(color: Colors.white, fontSize: 40),
  //           ),
  //         ]),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Color(0xff44B33E).withAlpha(100),
                    offset: Offset(2, 4),
                    blurRadius: 8,
                    spreadRadius: 2)
              ],
              gradient: LinearGradient(
                  begin: Alignment.topCenter, end: Alignment.bottomCenter,
                  // colors: [Color(0xfffbb448), Color(0xffe46b10)])),
                  colors: [Color(0xffFDFEFE), Color(0xff7B7D7D)])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _image(),
              SizedBox(
                // width: double.infinity,
                height: 50,
              ),
              // _title(),
              // SizedBox(
              //   height: 80,
              // ),
              _submitButton(),
              SizedBox(
                height: 20,
              ),
              _signUpButton(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
