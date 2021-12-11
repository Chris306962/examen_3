import 'package:flutter/material.dart';
import 'package:proyecto4/src/models/response_api.dart';
import 'package:proyecto4/src/models/user.dart';
import 'package:proyecto4/src/provider/users_provider.dart';

class RegisterController{
  BuildContext context;
  TextEditingController nombreController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController telefonoController = new TextEditingController();
  TextEditingController contrasenaController = new TextEditingController();

  UsersProvider usersProvider = new UsersProvider();

  Future init(BuildContext context){
    this.context = context;
    usersProvider.init(context);
  }

  void register() async{
    String nombre = nombreController.text.trim();
    String email = emailController.text.trim();
    String telefono = telefonoController.text.trim();
    String contrasena = contrasenaController.text.trim();

    User user = new User(
      nombre: nombre,
      email: email,
      telefono: telefono,
      contrasena: contrasena,
    );

    ResponseApi responseApi = await usersProvider.create(user);
    print('RESPUESTA: ${responseApi.toJson()}');
    print(nombre);
    print(email);
    print(telefono);
    print(contrasena);

  }
}