import 'package:cryptoinnovate/domain/use_case/controllers/theme_controller.dart';
import 'package:cryptoinnovate/ui/pages/feedpublicaciones.dart';
import 'package:cryptoinnovate/ui/widgets/btnLogout.dart';
import 'package:cryptoinnovate/ui/widgets/navSecundaria.dart';
import "package:flutter/material.dart";

class RegistroPublicaciones extends StatefulWidget {
  final ThemeController controller;
  const RegistroPublicaciones({Key? key, required this.controller})
      : super(key: key);

  @override
  State<RegistroPublicaciones> createState() => _RegistroPublicaciones();
}

class _RegistroPublicaciones extends State<RegistroPublicaciones> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    var publicarbtn = Container(
        width: 88,
        height: 23,
        margin: const EdgeInsets.only(top: 9, right: 13),
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 102, 92, 1),
          borderRadius: new BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 3, bottom: 3),
          child: ElevatedButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FeedPublicaciones(
                            controller: widget.controller,
                          ))),
              child: Text("Publicar",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromRGBO(255, 255, 255, 1))),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0)),
                  shadowColor:
                      MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0)))),
        ));

    var headerrestados = Container(
      margin: const EdgeInsets.only(top: 2),
      width: MediaQuery.of(context).size.width,
      height: 44,
      decoration: const BoxDecoration(
        border: Border(
            bottom:
                BorderSide(color: Color.fromRGBO(255, 102, 92, 1), width: 1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [btnLogout(), publicarbtn],
      ),
    );

    var imagenestado = Container(
        width: 41,
        height: 41,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/user.jpg"))));

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
              // color: Color.fromRGBO(51, 51, 51, 1)
            ),
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
    var rowimages = Container(
      margin: const EdgeInsets.only(top: 10, left: 85, right: 35),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12),
            child: Image.asset("assets/images/image.png"),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12),
            child: Image.asset("assets/images/location.png"),
          ),
          Padding(
              padding: EdgeInsets.only(left: 12),
              child: Image.asset("assets/images/gif.png"))
        ],
      ),
    );

    var contentPage = Container(
      child: Column(
        children: [headerrestados, controwima, textf, rowimages],
      ),
    );

    var col = Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            contentPage,
            NavSecundaria(
              controller: widget.controller,
            )
          ],
        ));

    return Scaffold(
      body: col,
    );
  }
}
