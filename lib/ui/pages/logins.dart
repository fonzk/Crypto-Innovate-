import 'package:cryptoinnovate/domain/controller/authentication_controller.dart';
import 'package:cryptoinnovate/ui/pages/feedestados.dart';
import 'package:cryptoinnovate/ui/pages/registro.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';

class Logins extends StatefulWidget {
  const Logins({Key? key}) : super(key: key);

  @override
  State<Logins> createState() => _LoginsState();
}

class _LoginsState extends State<Logins> {
  final _formKey = GlobalKey<FormState>();
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();
  AuthenticationController authenticationController = Get.find();

  _login(theEmail, thePassword) async {
    print('_login $theEmail $thePassword');
    try {
      await authenticationController.login(theEmail, thePassword);
    } catch (err) {
      Get.snackbar(
        "Login",
        err.toString(),
        icon: Icon(Icons.person, color: Colors.red),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var header = Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(top: 115, left: 37, right: 37),
        decoration: const BoxDecoration(
          border: Border(
              bottom:
                  BorderSide(color: Color.fromRGBO(255, 102, 92, 1), width: 2)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/lock.png",
              width: 21,
            ),
            const SizedBox(width: 8),
            const Text("inicio de sesión",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 35,
                    color: Color.fromRGBO(87, 87, 87, 1))),
          ],
        ));

    var correoelectronico = Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 215, left: 43, right: 43),
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
                keyboardType: TextInputType.emailAddress,
                controller: this.controllerEmail,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter email";
                  } else if (!value.contains('@')) {
                    return "Enter valid email address";
                  }
                })));

    var contratext = Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 8, left: 43, right: 43),
      child: Text("Contraseña",
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
          color: Color.fromRGBO(196, 196, 196, 0.15),
          borderRadius: new BorderRadius.circular(10.0),
        ),
        child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 5),
            child: TextFormField(
              controller: this.controllerPassword,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Contraseña',
              ),
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter password";
                } else if (value.length < 6) {
                  return "Password should have at least 6 characters";
                }
                return null;
              },
            )));

    var forgetpass = Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 8, right: 43),
      child: Text("Olvidaste tu contraseña?",
          textAlign: TextAlign.right,
          style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              fontSize: 13,
              color: Color.fromRGBO(231, 84, 37, 1))),
    );

    var mailbx = Column(
      children: [correoelectronico, cajatextomail],
    );

    var passbx = Column(
      children: [contratext, cajatextcontras],
    );

    var accederbtn = Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.only(top: 39, left: 43, right: 43),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 102, 92, 1),
        borderRadius: new BorderRadius.circular(10.0),
      ),
      child: Padding(
          padding: EdgeInsets.only(left: 67, right: 67, top: 8),
          child: ElevatedButton(
              child: Text("Acceder",
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
                  await _login(controllerEmail.text, controllerPassword.text);
                }
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(131, 48, 21, 0)),
                shadowColor:
                    MaterialStateProperty.all(Color.fromRGBO(131, 48, 21, 0)),
              ))),
    );

    var registra = Container(
      width: MediaQuery.of(context).size.width * 0.7,
      margin: const EdgeInsets.only(top: 56),
      child: ElevatedButton(
        child: Text("¿No tienes una cuenta? Regístrate ",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Color.fromRGBO(131, 48, 21, 1))),
        onPressed: () {
          // direcciónamiento a Resgistro
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Registro()));
        },
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromRGBO(131, 48, 21, 0)),
          shadowColor:
              MaterialStateProperty.all(Color.fromRGBO(131, 48, 21, 0)),
        ),
      ),
    );

    var col = Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              header,
              mailbx,
              passbx,
              forgetpass,
              accederbtn,
              registra
            ],
          ),
        ));
    return col;
    // return Scaffold(
    //   body: Container(
    //     child: col,
    //   ),
    // );
  }
}
