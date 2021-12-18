import 'package:cryptoinnovate/domain/controller/authentication_controller.dart';
import 'package:cryptoinnovate/ui/pages/response/response_page.dart';
import 'package:cryptoinnovate/ui/theme/colors.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';

class Registro extends StatefulWidget {
  const Registro({Key? key}) : super(key: key);

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  final _formKey = GlobalKey<FormState>();
  final controllerUser = TextEditingController();
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();
  AuthenticationController authenticationController = Get.find();
  _signup(theEmail, thePassword, theUser) async {
    try {
      await authenticationController.signUp(theEmail, thePassword, theUser);

      Get.snackbar(
        "Sign Up",
        'OK',
        icon: const Icon(Icons.person, color: Colors.red),
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (err) {
      Get.snackbar(
        "Sign Up",
        err.toString(),
        icon: const Icon(Icons.person, color: Colors.red),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

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
          children: [
            Image.asset(
              "assets/images/register.png",
              width: 34,
            ),
            const SizedBox(width: 8),
            const Text("Registro",
                textAlign: TextAlign.left,
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
              controller: controllerEmail,
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (val) {
                if (!(val!.isNotEmpty) &&
                    !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                        .hasMatch(val)) {
                  return "Ingrese un Imail valido";
                }
                return null;
              },
            )));

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
              controller: controllerPassword,
              obscureText: true,
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: 'Contraseña',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Ingrese su Contraseña";
                } else if (value.length < 6) {
                  return "Contraseña debe tener por lo menos 6 caracteres";
                }
                return null;
              },
            )));

    var nombreText = Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 163, left: 43, right: 43),
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
                controller: controllerUser,
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
    var confirmarbtn = Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.only(top: 39, left: 43, right: 43),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 102, 92, 1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
          padding: const EdgeInsets.only(left: 67, right: 67, top: 8),
          child: ElevatedButton(
              child: const Text("Acceder",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      fontSize: 19,
                      color: Color.fromRGBO(255, 255, 255, 1))),
              onPressed: () async {
                // this line dismiss the keyboard by taking away the focus of the TextFormField and giving it to an unused
                FocusScope.of(context).requestFocus(FocusNode());
                final form = _formKey.currentState;
                form!.save();
                if (_formKey.currentState!.validate()) {
                  await _signup(controllerEmail.text, controllerPassword.text,
                      controllerUser.text);
                }
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromRGBO(131, 48, 21, 0)),
                shadowColor: MaterialStateProperty.all(
                    const Color.fromRGBO(131, 48, 21, 0)),
              ))),
    );

    var registra = Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 56),
      child: ElevatedButton(
          child: const Text("Iniciar Sesión",
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
                MaterialStateProperty.all(const Color.fromRGBO(131, 48, 21, 0)),
            shadowColor:
                MaterialStateProperty.all(const Color.fromRGBO(131, 48, 21, 0)),
          )),
    );

    var col = Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Form(
          key: _formKey,
          child: Column(
            children: [header, namebx, mailbx, passbx, confirmarbtn, registra],
          ),
        ));
    return col;

    // return Scaffold(
    //   body: col,
    // );
  }
}
