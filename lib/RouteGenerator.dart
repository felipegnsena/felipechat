import 'package:flutter/material.dart';

import 'Cadastro.dart';
import 'Configuracoes.dart';
import 'Home.dart';
import 'Login.dart';
import 'Mensagens.dart';
import 'model/Usuario.dart';

class RouteGenerator {

  static Route<dynamic> generateRoute(RouteSettings settings){

    Usuario contato = Usuario();
    if(settings.arguments != null){
      contato = settings.arguments as Usuario;
    }

    switch( settings.name ){
      case "/" :
        return MaterialPageRoute(
          builder: (_) => Login()
        );
      case "/login" :
        return MaterialPageRoute(
            builder: (_) => Login()
        );
      case "/cadastro" :
        return MaterialPageRoute(
            builder: (_) => Cadastro()
        );
      case "/home" :
        return MaterialPageRoute(
            builder: (_) => Home()
        );
      case "/configuracoes" :
        return MaterialPageRoute(
            builder: (_) => Configuracoes()
        );
      case "/mensagens" :
        return MaterialPageRoute(
            builder: (_) => Mensagens(contato)
        );
      default:
        return _erroRota();
    }

  }

  static Route<dynamic> _erroRota(){
    return MaterialPageRoute(
      builder: (_){
        return Scaffold(
          appBar: AppBar(title: Text("Tela não encontrada!"),),
          body: Center(
            child: Text("Tela não encontrada!"),
          ),
        );
      }
    );
  }

}