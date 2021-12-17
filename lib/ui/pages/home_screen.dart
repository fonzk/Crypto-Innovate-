import 'package:cryptoinnovate/domain/use_case/controllers/theme_controller.dart';
import 'package:cryptoinnovate/ui/widgets/category_selector.dart';
import 'package:cryptoinnovate/ui/widgets/favorite_contacts.dart';
import 'package:cryptoinnovate/ui/widgets/navSecundaria.dart';
import 'package:cryptoinnovate/ui/widgets/recent_chats.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final ThemeController controller;

  const HomeScreen({Key? key, required this.controller}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

    var titulobox = Container(
        margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03),
        child: Text("Chats",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              fontSize: 25,
              // color: Color.fromRGBO(51, 51, 51, 1)
            )));

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
          children: [imagerow, titulobox],
        ),
      ),
    );

    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  headerrestados,
                  RecentChats(),
                  NavSecundaria(
                    controller: widget.controller,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
