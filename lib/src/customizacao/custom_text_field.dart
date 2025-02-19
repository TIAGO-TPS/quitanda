import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final IconData icon; // Ícone que será exibido dentro do campo
  final String label; // Texto do rótulo (label)
  final bool isSecret; // Define se o campo deve ocultar o texto (por exemplo, para senhas)

  const CustomTextField({
    super.key,
    required this.icon,
    required this.label,
    this.isSecret = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = false; // Controla se o texto está oculto ou visível
 

  @override 
  void initState(){
    super.initState();

    isObscure = widget.isSecret;
    
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15), // Espaçamento entre os campos
        child: TextFormField(
          obscureText: isObscure, // Define se o campo oculta o texto (usado para senhas)
          decoration: InputDecoration(
            prefixIcon: Icon(widget.icon),
            suffixIcon: widget.isSecret
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure; // Alterna entre mostrar ou ocultar o texto
                      });
                    },
                    icon: 
                    Icon(isObscure ? Icons.visibility : Icons.visibility_off),
                  )
                : null,

            labelText: widget.label, // Define o rótulo do campo
            isDense: true, // Deixa o campo mais compacto
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ),
      );
  }  
}

