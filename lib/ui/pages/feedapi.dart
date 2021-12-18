import 'package:cryptoinnovate/domain/use_case/controllers/theme_controller.dart';
import 'package:cryptoinnovate/ui/pages/response/screens/response_screen.dart';
import 'package:cryptoinnovate/ui/theme/colors.dart';
import 'package:cryptoinnovate/ui/widgets/btnLogout.dart';
import 'package:cryptoinnovate/ui/widgets/navPrincipal.dart';
import "package:flutter/material.dart";

class Feedapi extends StatefulWidget {
  final ThemeController controller;

  const Feedapi({Key? key, required this.controller}) : super(key: key);
  @override
  State<Feedapi> createState() => _Feedapi();
}

class _Feedapi extends State<Feedapi> {
  @override
  Widget build(BuildContext context) {
    var headerrestados = Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        border: Border(
            bottom:
                BorderSide(color: Color.fromRGBO(255, 102, 92, 1), width: 1)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [btnLogout()],
        ),
      ),
    );

    var state = ResponseScreen(
      controller: widget.controller,
    );

    return Container(
      color: widget.controller.darkMode
          ? AppColors.RichBlackFrogra29
          : AppColors.Cultured,
      child: Expanded(
          child: Column(
        children: [
          headerrestados,
          state,
          NavPrincipal(
            controller: widget.controller,
          )
        ],
      )),
    );
  }
}
