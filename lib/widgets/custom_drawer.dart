import 'package:flutter/material.dart';
import 'package:sesion_9/preferences/preferences.dart';
import 'package:sesion_9/screens/index.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://i.pinimg.com/736x/4b/aa/09/4baa094770c1813133c1a6a037e6e30a.jpg'))),
            child: SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  (Preferences.img == '')
                      ? const CircleAvatar(
                          radius: 45,
                          child: Icon(Icons.photo, size: 50),
                        )
                      : CircleAvatar(
                          radius: 45,
                          backgroundImage: NetworkImage(Preferences.img),
                        ),                      
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            Preferences.nombre,
                            style: const TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        Preferences.apellido,
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Configuración'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ConfigScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Perfíl'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PerfilScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
