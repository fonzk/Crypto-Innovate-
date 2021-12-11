import 'package:cryptoinnovate/feedestados.dart';
import 'package:flutter/material.dart';

void main() => runApp(NavPrincipal());

class NavPrincipal extends StatefulWidget {
  @override
  State<NavPrincipal> createState() => _NavPrincipalState();
}

class _NavPrincipalState extends State<NavPrincipal> {
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
                children: [
                  btnHomeButton,
                  btnHomeButton,
                  btnHomeButton,
                  btnHomeButton,
                ],
              )
            ],
          )),
    );
  }
}
