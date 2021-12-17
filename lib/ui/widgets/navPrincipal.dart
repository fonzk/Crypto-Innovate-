import 'package:cryptoinnovate/domain/use_case/controllers/theme_controller.dart';
import 'package:cryptoinnovate/ui/pages/feedapi.dart';
import 'package:cryptoinnovate/ui/pages/feedestados.dart';
import 'package:cryptoinnovate/ui/pages/feedpublicaciones.dart';
import 'package:cryptoinnovate/ui/pages/regpublicaciones.dart';
import 'package:cryptoinnovate/ui/pages/updatedata.dart';
import 'package:flutter/material.dart';

class NavPrincipal extends StatefulWidget {
  final ThemeController controller;

  const NavPrincipal({Key? key, required this.controller}) : super(key: key);
  @override
  State<NavPrincipal> createState() => _NavPrincipalState();
}

class _NavPrincipalState extends State<NavPrincipal> {
  @override
  Widget build(BuildContext context) {
    // botones de navegacion
    var btnHomeButton = new ElevatedButton(
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FeedEstados(
                    controller: widget.controller,
                  ))),
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0)),
          shadowColor: MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0))),
      child: Image.asset('assets/images/home.png'),
    );

    var btnPublicButton = new ElevatedButton(
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FeedPublicaciones(
                    controller: widget.controller,
                  ))),
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0)),
          shadowColor: MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0))),
      child: Image.asset('assets/images/image.png'),
    );
    var btnApiButton = new ElevatedButton(
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Feedapi(
                    controller: widget.controller,
                  ))),
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0)),
          shadowColor: MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0))),
      child: Image.asset('assets/images/moneda.png'),
    );
    var btnNewsButton = new ElevatedButton(
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => RegistroPublicaciones(
                    controller: widget.controller,
                  ))),
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0)),
          shadowColor: MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0))),
      child: Image.asset('assets/images/Nuevos.png'),
    );

    var btnConfingButton = new ElevatedButton(
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => UpdateData(
                    controller: widget.controller,
                  ))),
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
                  btnApiButton,
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
