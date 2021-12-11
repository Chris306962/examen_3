import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:proyecto4/src/utils/my_colors.dart';

import 'login_controller.dart';



class loginPage extends StatefulWidget {
  const loginPage({Key key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

  LoginController _con = new LoginController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
            Positioned(child: _TextLogin(),
              top: 60,
              left: 25,
            ),
            SingleChildScrollView(
              child: Column(

                children: [

                  _imageBanner(),
                  _textFieldEmail(),
                  _textFieldPassword(),
                  _buttonLogin(),
                  _textDontHaveAccount(),


                ],
              ),
            ),
          ],
        ),
      )
    );
  }


  Widget _TextLogin(){
    return Text(
      'Iniciar sesion',
          style: TextStyle(
           color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22
    ),
    );
  }


  Widget _textDontHaveAccount(){
   return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Crear cuenta',
          style: TextStyle(
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(width: 7),
        GestureDetector(
          onTap: _con.goToRegisterPage,
          child: Text(
            'Registrate',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: MyColors.primaryColors
            ),
          ),
        )
      ],
    );
  }

  Widget _buttonLogin(){
   return Container(
     width: double.infinity,
     margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
     child: ElevatedButton
        (onPressed: (){},
          child: Text('Ingresar'),
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


  Widget _textFieldPassword(){
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        decoration: BoxDecoration(
            color: MyColors.primarypacityColor,
          borderRadius: BorderRadius.circular(30)
        ),
        child: TextField(
            controller: _con.passwordController,
          obscureText: true,
          decoration: InputDecoration(
              hintText: 'Contraseña',
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(25),
              hintStyle: TextStyle(
                color: MyColors.primaryColorsDark,
              ),
              prefixIcon: Icon(Icons.lock,
                color: MyColors.primaryColors,)
          )
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


  Widget _imageBanner(){
    return Container(
      margin: EdgeInsets.only(
          top: 100,
          bottom: MediaQuery.of(context).size.height * 0.10
      ),
      child: Image.asset(
        '',
        width: 200,
        height: 200,
      ),
    );
  }
}


