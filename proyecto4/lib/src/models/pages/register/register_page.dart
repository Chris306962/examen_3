import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:proyecto4/src/models/pages/register/register_controller.dart';
import 'package:proyecto4/src/utils/my_colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  RegisterController _con = new RegisterController();
  @override
  void initState(){;
    SchedulerBinding.instance.addPostFrameCallback((timeStamp){
      _con.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      width: double.infinity,
        child: Stack(
          children: [

            Positioned(
              child: _textRegister(),
              top: 65,
              left: 20,

            ),

            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 150),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                  //  _imageUser(),
                    SizedBox(height: 30),
                    _textFieldName(),
                    _textFieldEmail(),
                    _textFieldTelefono(),
                    _textFieldPasword(),
                    _buttonLogin()

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

 /* Widget _imageUser(){
    return CircleAvatar(
      backgroundImage: AssetImage('assets/img/user/profile_2.png'),
      radius: 60,
      backgroundColor: Colors.grey[200],
    );
} */


  Widget _textRegister(){
    return  Text(
      'Registro',
      style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20
      ),
    );
  }

  Widget _textFieldPasword(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
          color: MyColors.primarypacityColor,
          borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
        controller: _con.contrasenaController,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Contraseña',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(25),
            hintStyle: TextStyle(
                color: MyColors.primaryColorsDark
            ),
            prefixIcon: Icon(Icons.lock,
              color: MyColors.primaryColors,)
        ),
      ),
    );
  }

  Widget _textFieldTelefono(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
          color: MyColors.primarypacityColor,
          borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
        controller: _con.telefonoController,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            hintText: 'Telefono',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(25),
            hintStyle: TextStyle(
                color: MyColors.primaryColorsDark
            ),
            prefixIcon: Icon(Icons.phone,
              color: MyColors.primaryColors,)
        ),
      ),
    );
  }

  Widget _textFieldEmail(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
          color: MyColors.primarypacityColor,
          borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
        controller: _con.emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Correo Electronico',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(25),
            hintStyle: TextStyle(
                color: MyColors.primaryColorsDark
            ),
            prefixIcon: Icon(Icons.email,
              color: MyColors.primaryColors,)
        ),
      ),
    );
  }

  Widget _textFieldName(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
          color: MyColors.primarypacityColor,
          borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
        controller: _con.nombreController,
        decoration: InputDecoration(
            hintText: 'Nombre completo',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(25),
            hintStyle: TextStyle(
                color: MyColors.primaryColorsDark
            ),
            prefixIcon: Icon(Icons.account_box_outlined,
              color: MyColors.primaryColors,)
        ),
      ),
    );
  }

  Widget _buttonLogin(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: ElevatedButton(
        onPressed: _con.register,
        child: Text('Registrar'),
        style: ElevatedButton.styleFrom(
            primary: MyColors.primaryColors,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
            ),
            padding: EdgeInsets.symmetric(vertical: 25)
        ),
      ),
    );
  }

}
