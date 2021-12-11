/*falta por completar
*/

import 'package:cryptoinnovate/navPrincipal.dart';
import "package:flutter/material.dart";

class FeedEstados extends StatefulWidget {
  const FeedEstados({Key? key}) : super(key: key);

  @override
  State<FeedEstados> createState() => _FeedEstados();
}

class _FeedEstados extends State<FeedEstados> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    var imagerow = Container(
        margin: const EdgeInsets.only(left: 9),
        width: 32,
        height: 31,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/perfil.png"))));

    var publicarbtn = Container(
        width: 88,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 102, 92, 1),
          borderRadius: new BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 3, bottom: 3),
          child: Text("Publicar",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromRGBO(255, 255, 255, 1))),
        ));
    ;

    var headerrestados = Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        border: Border(
            bottom:
                BorderSide(color: Color.fromRGBO(255, 102, 92, 1), width: 1)),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [imagerow, publicarbtn],
        ),
      ),
    );

    var imagenestado = Container(
        width: 41,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/perfil.png"))));

    var rowimage = Row(
      children: [
        imagenestado,
        Container(
          margin: const EdgeInsets.only(left: 30),
          child: Text(
            "¿Qué estás pensando?",
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Color.fromRGBO(51, 51, 51, 1)),
          ),
        ),
      ],
    );

    var controwima = Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.only(top: 26, left: 25),
      child: rowimage,
    );

    var homelogo = NavPrincipal();

    var textf = Container(
      decoration: BoxDecoration(
        border: Border(
            bottom:
                BorderSide(color: Color.fromRGBO(255, 102, 92, 1), width: 2)),
      ),
      margin: const EdgeInsets.only(top: 15, left: 85, right: 35),
      child: TextField(
        maxLines: 3,
        decoration: InputDecoration.collapsed(hintText: "Enter your text here"),
      ),
    );

    var contentPage = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [headerrestados, controwima, textf],
      ),
    );

    var col = Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [contentPage, homelogo],
        ));

    return Scaffold(
      body: col,
    );
  }
}
