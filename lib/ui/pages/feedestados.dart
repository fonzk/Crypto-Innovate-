import 'package:cryptoinnovate/domain/controller/authentication_controller.dart';
import 'package:cryptoinnovate/domain/use_case/controllers/theme_controller.dart';
import 'package:cryptoinnovate/ui/firebase_central.dart';
import 'package:cryptoinnovate/ui/pages/home_screen.dart';
import 'package:cryptoinnovate/ui/pages/regestados.dart';
import 'package:cryptoinnovate/ui/pages/ubication.dart';
import 'package:cryptoinnovate/ui/widgets/btnLogout.dart';
import 'package:cryptoinnovate/ui/widgets/navPrincipal.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';

class FeedEstados extends StatefulWidget {
  final ThemeController controller;
  const FeedEstados({Key? key, required this.controller}) : super(key: key);

  @override
  State<FeedEstados> createState() => _FeedEstados();
}

class _FeedEstados extends State<FeedEstados> {
  bool state = false;

  @override
  Widget build(BuildContext context) {
    var publicarbtn = Container(
        width: 88,
        child: Padding(
          padding: EdgeInsets.only(top: 3, bottom: 3),
          child: ElevatedButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeScreen(
                            controller: widget.controller,
                          ))),
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
          children: [btnLogout(), publicarbtn],
        ),
      ),
    );

    var rowSloganView = Container(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Estados",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                  // color: Color.fromRGBO(51, 51, 51, 1)
                )),
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegistroEstados(
                              controller: widget.controller,
                            ))),
                child: Text("Nuevo estado +",
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/user.jpg"))),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Color.fromRGBO(255, 102, 92, 1), width: 1)),
                ),
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
                          fontSize: 20,
                          // color: Color.fromRGBO(51, 51, 51, 1)
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Text(
                            '"Nunca es tarde para ser lo que deber??as haber sido"',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              // color: Color.fromRGBO(51, 51, 51, 1)
                            )),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));

    var contenStates = Container(
      child: Column(
        children: [
          state,
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
          children: [
            contentPage,
            NavPrincipal(
              controller: widget.controller,
            )
          ],
        ));

    return Scaffold(
      body: col, 
    );
  }
}
