import 'package:cryptoinnovate/domain/use_case/controllers/theme_controller.dart';
import 'package:cryptoinnovate/ui/theme/colors.dart';
import 'package:cryptoinnovate/ui/widgets/change__theme_buttib_widget.dart';
import 'package:cryptoinnovate/ui/widgets/navSecundaria.dart';
import "package:flutter/material.dart";
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class UpdateData extends StatefulWidget {
  const UpdateData({Key? key}) : super(key: key);

  @override
  _UpdateDataState createState() => _UpdateDataState();
}

class _UpdateDataState extends State<UpdateData> {
  @override
  Widget build(BuildContext context) {
    var imageheader = Container(
        margin: const EdgeInsets.only(top: 40),
        width: 173,
        height: 168,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/perfil.png"),
          ),
        ));

    var header = Container(
        margin: const EdgeInsets.only(top: 23, left: 37, right: 37),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          border: Border(
              bottom:
                  BorderSide(color: Color.fromRGBO(255, 102, 92, 1), width: 2)),
        ),
        child: Row(
          children: const [
            Text("Actualizar Datos",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 35,
                )),
          ],
        ));
    var correoelectronico = Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 8, left: 43, right: 43),
      child: const Text("Correo Electronico",
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
          color: const Color.fromRGBO(196, 196, 196, 0.15),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
            child: TextFormField(
                decoration: const InputDecoration(
              border: InputBorder.none,
              labelText: 'Email',
            ))));

    var contratext = Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 8, left: 43, right: 43),
      child: const Text("Contraseña",
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              fontSize: 13,
              color: Color.fromRGBO(464, 84, 37, 1))),
    );
    var cajatextcontras = Container(
        margin: const EdgeInsets.only(left: 43, right: 43),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(196, 196, 196, 0.15),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
            child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Contraseña',
                ))));

    var nombreText = Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 45, left: 43, right: 43),
      child: const Text("Nombre Completo",
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              fontSize: 13,
              color: Color.fromRGBO(231, 84, 37, 1))),
    );
    var cajatextonombre = Container(
        margin: const EdgeInsets.only(left: 43, right: 43),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(196, 196, 196, 0.15),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
            child: TextFormField(
                decoration: const InputDecoration(
              border: InputBorder.none,
              labelText: 'Nombre Completo',
            ))));

    var namebx = Column(
      children: [nombreText, cajatextonombre],
    );
    var mailbx = Column(
      children: [correoelectronico, cajatextomail],
    );
    var passbx = Column(
      children: [contratext, cajatextcontras],
    );

    var actualizarBtn = Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        margin: const EdgeInsets.only(top: 39, left: 43, right: 43),
        decoration: BoxDecoration(
          color: AppColors.Bittersweet,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: const Padding(
          padding: EdgeInsets.only(left: 67, right: 67, top: 8),
          child: Text("Actualizar Datos",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  fontSize: 19,
                  color: AppColors.Blanco)),
        ));
    final ThemeController controller = Get.find();
    var sw = Container(
      margin: const EdgeInsets.only(top: 35),
      child: ChangeThemeButtonWidget(
        controller: controller,
        context: context,
      ),
    );

    var contentPage = Column(
      children: [
        imageheader,
        header,
        namebx,
        mailbx,
        passbx,
        sw,
        actualizarBtn,
      ],
    );

    var col = Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [contentPage, navsec(context)],
    );

    return Scaffold(body: col);
  }
}
