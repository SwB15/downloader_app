import 'package:downloader/whatsapp/whatsapp.dart';
import 'package:downloader/youtube/youtube.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Opciones para descargar archivos',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading:
                Image.asset('assets/img/whatsapp.png', width: 25, height: 25),
            title: const Text(
              'WhatsApp',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Whatsapp()),
              );
            },
          ),
          ListTile(
            leading:
                Image.asset('assets/img/facebook.png', width: 25, height: 25),
            title: const Text(
              'Facebook',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading:
                Image.asset('assets/img/instagram.png', width: 25, height: 25),
            title: const Text(
              'Instagram',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading:
                Image.asset('assets/img/youtube.png', width: 25, height: 25),
            title: const Text(
              'YouTube',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Youtube()),
              );
            },
          ),
          ListTile(
            leading:
                Image.asset('assets/img/tik-tok.png', width: 25, height: 25),
            title: const Text(
              'TikTok',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Image.asset('assets/img/x.png', width: 25, height: 25),
            title: const Text(
              'X / Twitter',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
