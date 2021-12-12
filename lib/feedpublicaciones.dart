/*falta por completar
*/

import 'package:cryptoinnovate/navPrincipal.dart';
import 'package:cryptoinnovate/regestados.dart';
import "package:flutter/material.dart";

class FeedPublicaciones extends StatefulWidget {
  const FeedPublicaciones({Key? key}) : super(key: key);

  @override
  State<FeedPublicaciones> createState() => _FeedPublicaciones();
}

class _FeedPublicaciones extends State<FeedPublicaciones> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    var imagerow = Container(
        margin: const EdgeInsets.only(left: 9),
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/user.jpg"))));

    var publicarbtn = Container(
        width: 88,
        child: Padding(
          padding: EdgeInsets.only(top: 3, bottom: 3),
          child: ElevatedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegistroEstados())),
              child: Image.asset('assets/images/comment.png'),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0)),
                  shadowColor:
                      MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0)))),
        ));

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

    var rowSloganView = Container(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Publicaciones",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                    color: Color.fromRGBO(51, 51, 51, 1))),
            ElevatedButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegistroEstados())),
                child: Text("Nuevo Publicación +",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color.fromRGBO(255, 102, 92, 1))),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0)),
                    shadowColor:
                        MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0))))
          ],
        ),
      ),
    );

    var state = Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Color.fromRGBO(196, 196, 196, 0.15)),
        margin: EdgeInsets.only(bottom: 10, top: 10),
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 4, top: 4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/user.jpg"))),
              )),
              Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  margin: const EdgeInsets.only(bottom: 15),
                  decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromRGBO(255, 102, 92, 1), width: 1)),
                  ),
                  child: Expanded(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Manuel Garcia",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color.fromRGBO(51, 51, 51, 1)),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.12),
                            child: Text('Posicionamiento digital',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10,
                                    color: Color.fromRGBO(51, 51, 51, 1))),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 7),
                          width: 238,
                          height: 109,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("assets/images/pubimg.png"))),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ));

    var contenStates = Container(
      child: Column(
        children: [
          state,
          state,
          state,
        ],
      ),
    );

    var contentPage = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [headerrestados, rowSloganView, contenStates],
      ),
    );

    var col = Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [contentPage, NavPrincipal()],
        ));

    return Scaffold(
      body: col,
    );
  }
}
