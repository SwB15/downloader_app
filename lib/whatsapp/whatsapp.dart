import 'package:flutter/material.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF008069),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),

          // Barra de navegación
          const SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      'WhatsApp',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          decoration: TextDecoration.none),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.search, color: Colors.white),
                    SizedBox(width: 20),
                  ],
                )
              ],
            ),
          ),

          // Estados
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/img/whatsapp.png',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),

                        const SizedBox(
                            width: 20), // Espacio entre la imagen y el texto

                        const Column(
                          children: [
                            Text(
                              "Nombre y apellido",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  decoration: TextDecoration.none),
                            ),
                            Text(
                              "Tiempo del estado",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  decoration: TextDecoration.none),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/img/whatsapp.png',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),

                        const SizedBox(
                            width: 20), // Espacio entre la imagen y el texto

                        const Column(
                          children: [
                            Text(
                              "Nombre y apellido",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  decoration: TextDecoration.none),
                            ),
                            Text(
                              "Tiempo del estado",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  decoration: TextDecoration.none),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
