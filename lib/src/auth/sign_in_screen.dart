import 'package:flutter/material.dart';
import 'package:quitanda/src/customizacao/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green, // Define a cor de fundo da tela como verde

      appBar: AppBar(
        title: Text("QUITANDA"), // Define o título do AppBar
        backgroundColor: const Color.fromARGB(255, 124, 180, 137), // Cor de fundo do AppBar
      ),

      body: Column( // Organiza os elementos verticalmente na tela
        children: [
          Expanded( // Expande o primeiro container para ocupar metade da tela
            child: Container(
              color: Colors.green, // Define a cor do container como verde
            ),
          ),
          
          Container( // Segunda metade da tela, onde fica o formulário de login
            padding: const EdgeInsets.symmetric(
              horizontal: 32, // Define o padding horizontal
              vertical: 40, // Define o padding vertical
            ),

            decoration: const BoxDecoration(
              color: Colors.white, // Cor de fundo branca para o formulário
              borderRadius: BorderRadius.vertical(
              top: Radius.circular(45), // Arredonda o topo do container
              ),
            ),

            child: Column( 
              crossAxisAlignment: CrossAxisAlignment.stretch,// Organiza os campos de texto verticalmente
               children: [
                //Email
                const CustomTextField(
                  icon: Icons.email, // Ícone do campo de e-mail
                  label: 'Email', // Texto do rótulo
                  ),

                //Senha
                const CustomTextField(
                  icon: Icons.lock, // Ícone do campo de senha
                  label: 'Senha', // Texto do rótulo
                  isSecret: true, // Define que este campo é secreto (senha)
                ),
               ],
            ),
          ),
        ],
      ),
    ); 
     
  }
}
