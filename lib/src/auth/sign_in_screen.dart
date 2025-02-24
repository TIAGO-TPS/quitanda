import 'package:flutter/material.dart';
import 'package:quitanda/src/customizacao/custom_text_field.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagem de fundo
          Positioned.fill(
            child: Image.asset(
              'lib/assets/images/cachorroQuente.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // Gradiente sobre a imagem
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black.withOpacity(0.6), Colors.red.withOpacity(0.6)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          // Conteúdo principal
          SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              children: [
                // AppBar transparente
                AppBar(
                  centerTitle: true,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),

                // Espaço para título e animação
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 30),

                      // Texto fixo
                      SizedBox(
                        height: 40, // Mantém o espaço fixo
                        child: const Text(
                          "O melhor cachorro-quente da cidade!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Cursive',
                          ),
                        ),
                      ),

                      const SizedBox(height: 15),

                      // Texto animado
                      SizedBox(
                        height: 30, // Mantém o espaço fixo para a animação
                        child: AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: [
                            FadeAnimatedText(
                              ' Sabor inigualável! ',
                              textStyle: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellowAccent,
                                fontFamily: 'Cursive',
                              ),
                            ),
                            FadeAnimatedText(
                              '🌭 Venha experimentar! 🌭',
                              textStyle: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.orangeAccent,
                                fontFamily: 'Cursive',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // Caixa branca com campos de login
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 202, 197, 197).withOpacity(0.8),
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(45)),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(66, 5, 5, 5),
                        blurRadius: 10,
                        offset: Offset(0, -5),
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Campo de e-mail
                      const CustomTextField(icon: Icons.email, label: 'Email'),
                      const SizedBox(height: 8),

                      // Campo de senha
                      const CustomTextField(icon: Icons.lock, label: 'Senha', isSecret: true),

                      // Botão "Esqueci minha senha"
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Esqueci minha senha",
                            style: TextStyle(color: Color.fromARGB(255, 31, 28, 28)),
                          ),
                        ),
                      ),

                      const SizedBox(height: 6),

                      // Botão "Entrar"
                      SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 228, 92, 38),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: const Text(
                            "Entrar",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      // Botão "Cadastrar"
                      SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 228, 92, 38),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: const Text(
                            "Cadastrar",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
