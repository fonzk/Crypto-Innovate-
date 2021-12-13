import 'package:cryptoinnovate/ui/pages/feedestados.dart';
import 'package:cryptoinnovate/ui/pages/feedpublicaciones.dart';
import 'package:cryptoinnovate/ui/pages/regpublicaciones.dart';
import 'package:cryptoinnovate/ui/pages/updatedata.dart';
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

    var btnPublicButton = new ElevatedButton(
      onPressed: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => FeedPublicaciones())),
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0)),
          shadowColor: MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0))),
      child: Image.asset('assets/images/image.png'),
    );

    var btnNewsButton = new ElevatedButton(
      onPressed: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => RegistroPublicaciones())),
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0)),
          shadowColor: MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0))),
      child: Image.asset('assets/images/Nuevos.png'),
    );

    var btnConfingButton = new ElevatedButton(
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => UpdateData())),
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0)),
          shadowColor: MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0))),
      child: Image.asset('assets/images/Confings.png'),
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
                  btnPublicButton,
                  btnNewsButton,
                  btnConfingButton,
                ],
              )
            ],
          )),
    );
  }
}
