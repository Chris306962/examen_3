import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {


  String id;
  String nombre;
  String email;
  String telefono;
  String contrasena;
  String image;
  String sessionToken;

  User({


    this.id,
    this.nombre,
    this.email,
    this.telefono,
    this.contrasena,
    this.image,
    this.sessionToken,
  });


  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    nombre: json["nombre"],
    email: json["email"],
    telefono: json["telefono"],
    contrasena: json["contrasena"],
    image: json["image"],
    sessionToken: json["session_token"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nombre": nombre,
    "email": email,
    "telefono": telefono,
    "contrasena": contrasena,
    "image": image,
    "session_token": sessionToken,
  };
}
