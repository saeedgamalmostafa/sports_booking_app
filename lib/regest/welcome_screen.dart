import 'package:flutter/material.dart';
import '../route_named.dart';
import 'rounded_button.dart';


class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                RoundedButton(
                  colour: Colors.lightBlueAccent,
                  title: 'Have a Stadium',
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNamed.client);
                  },
                ),
                RoundedButton(
                    colour: Colors.blueAccent,
                    title: 'Find a  stadium',
                    onPressed: () {
                      Navigator.pushNamed(context,   RouteNamed.user );
                    }),
              ]),
        ));
  }
}
