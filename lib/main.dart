import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // personal branding here!
        // https://github.com/davidlj95/jsonresume-theme-material-design/blob/v0.8.2/src/sass/my-theme.scss#L20
        // using https://www.materialpalette.com/colors
        // saw this is (almost) the equivalent
        backgroundColor: Colors.deepPurpleAccent.shade700,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/profile.jpg'),
              ),
              Text(
                'David LJ',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Roboto',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Full stack developer'.toUpperCase(),
                style: TextStyle(
                  color: Colors.deepPurple.shade100,
                  fontFamily: 'Roboto',
                  fontSize: 20.0,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(
                height: 20,
                width: 250,
                child: Divider(
                  color: Colors.deepPurple.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone_android,
                    color: Colors.deepPurpleAccent.shade700,
                  ),
                  title: Text(
                    '+34 644 449 360',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.deepPurpleAccent.shade400,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.deepPurpleAccent.shade700,
                  ),
                  title: Text(
                    'mail@davidlj95.com',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.deepPurpleAccent.shade400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
