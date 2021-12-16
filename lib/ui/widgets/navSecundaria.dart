import 'package:cryptoinnovate/ui/pages/feedestados.dart';
import 'package:flutter/material.dart';

void main() => runApp(NavSecundaria());

class NavSecundaria extends StatefulWidget {
  @override
  State<NavSecundaria> createState() => _NavSecundariaState();
}

class _NavSecundariaState extends State<NavSecundaria> {
  @override
  Widget build(BuildContext context) {
    // botones de navegacion
    var btnHomeButton = new ElevatedButton(
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => FeedEstados())),
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0)),
          shadowColor: MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0))),
      child: Image.asset('assets/images/home.png'),
    );

    return Container(
      child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [btnHomeButton],
              )
            ],
          )),
    );
  }
}
