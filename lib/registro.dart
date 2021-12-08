import "package:flutter/material.dart";

class Registro extends StatelessWidget {
  const Registro({Key? key}) : super(key: key);

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
                    color: Color.fromRGBO(87, 87, 87, 1))),
          ],
        ));
    var correoelectronico = Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 8, left: 43, right: 43),
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
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Contraseña',
                ))));

    var nombreText = Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 163, left: 43, right: 43),
      child: Text("Nombre Completo",
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
          color: Color.fromRGBO(196, 196, 196, 0.15),
          borderRadius: new BorderRadius.circular(10.0),
        ),
        child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 5),
            child: TextFormField(
                decoration: InputDecoration(
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
          color: Color.fromRGBO(255, 102, 92, 1),
          borderRadius: new BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 67, right: 67, top: 8),
          child: Text("Confirmar",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  fontSize: 19,
                  color: Color.fromRGBO(255, 255, 255, 1))),
        ));

    var registra = Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 56),
      child: Text("Iniciar Sesión",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              fontSize: 13,
              color: Color.fromRGBO(131, 48, 21, 1))),
    );
    var col = Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [header, namebx, mailbx, passbx, confirmarbtn, registra],
        ));
    return col;
  }
}
