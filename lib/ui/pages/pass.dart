import 'package:cryptoinnovate/ui/pages/registro.dart';
import 'package:cryptoinnovate/ui/pages/response/response_page.dart';
import 'package:cryptoinnovate/ui/theme/colors.dart';
import "package:flutter/material.dart";

class Pass extends StatelessWidget {
  const Pass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var header = Container(
        margin: const EdgeInsets.only(top: 115, left: 37, right: 37),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          border: Border(
              bottom:
                  BorderSide(color: Color.fromRGBO(255, 102, 92, 1), width: 2)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Recupera tu cuenta",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 35,
                  // color: Color.fromRGBO(87, 87, 87, 1)
                )),
          ],
        ));
    var correoelectronico = Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 244, left: 43, right: 43),
      child: Text("Correo Electronico",
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              fontSize: 13,
              color: Color.fromRGBO(231, 84, 37, 1))),
    );
    var cajatextomail = Container(
        margin: const EdgeInsets.only(left: 43, right: 43),
        decoration: BoxDecoration(
          color: Color.fromRGBO(196, 196, 196, 0.15),
          borderRadius: new BorderRadius.circular(10.0),
        ),
        child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 5),
            child: TextFormField(
                decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'Email',
            ))));

    var mailbx = Column(
      children: [correoelectronico, cajatextomail],
    );

    var recuperarBtn = Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        margin: const EdgeInsets.only(top: 39, left: 43, right: 43),
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 102, 92, 1),
          borderRadius: new BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 67, right: 67, top: 8),
          child: Text("Recuperar",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  fontSize: 19,
                  color: Color.fromRGBO(255, 255, 255, 1))),
        ));

    var registra_old = Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 146),
      child: Text("¿No tienes una cuenta? Regístrate",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              fontSize: 13,
              color: Color.fromRGBO(131, 48, 21, 1))),
    );
    var registra = Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 146),
      child: ElevatedButton(
        child: const Text("¿No tienes una cuenta? Regístrate ",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: AppColors.Flame)),
        onPressed: () {
          // direcciónamiento a Resgistro
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Scaffold(body: Registro())));
        },
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(const Color.fromRGBO(131, 48, 21, 0)),
          shadowColor:
              MaterialStateProperty.all(const Color.fromRGBO(131, 48, 21, 0)),
        ),
      ),
    );
    var login = Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 5),
      child: ElevatedButton(
          child: Text("Iniciar Sesión",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: AppColors.Flame)),
          onPressed: () {
            print(Navigator);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ResponsePage()));
          },
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Color.fromRGBO(131, 48, 21, 0)),
            shadowColor:
                MaterialStateProperty.all(Color.fromRGBO(131, 48, 21, 0)),
          )),
    );

    var col = Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [header, mailbx, recuperarBtn, registra, login],
        ));
    return col;
  }
}
