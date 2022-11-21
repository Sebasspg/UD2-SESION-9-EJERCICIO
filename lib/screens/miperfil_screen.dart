import 'package:flutter/material.dart';
import 'package:sesion_9/preferences/preferences.dart';
import 'package:sesion_9/widgets/index.dart';

class PerfilScreen extends StatefulWidget {
  const PerfilScreen({super.key});

  @override
  State<PerfilScreen> createState() => _PerfilScreenState();
}

class _PerfilScreenState extends State<PerfilScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        image: const DecorationImage(
          image: NetworkImage(
              'https://i.pinimg.com/736x/4b/aa/09/4baa094770c1813133c1a6a037e6e30a.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor:
              const Color.fromARGB(255, 255, 255, 255).withOpacity(0),
          title: const Text(
            'Perfíl',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        drawer: const CustomDrawerWidget(),
        body: Column(
          children: [
            (Preferences.img == '')
                ? const CircleAvatar(
                    radius: 60,
                    child: Icon(Icons.photo, size: 50),
                  )
                : CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(Preferences.img),
                  ),
            SizedBox(
              height: 10,
            ),
            Text(
              Preferences.nombre,
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              Preferences.apellido,
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              color: Color.fromARGB(255, 255, 255, 255),
              width: double.infinity,
              height: 389,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ListTile(
                    leading: Icon(Icons.mail),
                    title: Text('E-mail', style: TextStyle(color: Color.fromARGB(255, 155, 155, 155), fontSize: 12),),
                    subtitle: Text(Preferences.email, style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 13),),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone_android),
                    title: Text('Teléfono', style: TextStyle(color: Color.fromARGB(255, 155, 155, 155), fontSize: 12),),
                    subtitle: Text(Preferences.telefono, style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 13),),
                  ),
                  ListTile(
                    leading: Icon(Icons.location_city),
                    title: Text('Ciudad', style: TextStyle(color: Color.fromARGB(255, 155, 155, 155), fontSize: 12),),
                    subtitle: Text(Preferences.ciudad, style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 13),),
                  ),
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text('País', style: TextStyle(color: Color.fromARGB(255, 155, 155, 155), fontSize: 12),),
                    subtitle: Text(Preferences.pais, style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 13),),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Género', style: TextStyle(color: Color.fromARGB(255, 155, 155, 155), fontSize: 12),),
                    subtitle: (Preferences.genero != 1)
                      ? const Text('Femenino', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 13),)
                      : const Text('Masculino', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 13),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

    // return Container(
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(0),
    //     image: const DecorationImage(
    //       image: NetworkImage(
    //                     'https://i.pinimg.com/736x/4b/aa/09/4baa094770c1813133c1a6a037e6e30a.jpg'),
    //       fit: BoxFit.fill,
    //     ),
    //   ),
    //   child: Scaffold(
    //     backgroundColor: Colors.transparent,
    //     automaticallyImplyLeading: false,
    //     appBar: AppBar(
    //       backgroundColor: const Color.fromARGB(255, 255, 255, 255).withOpacity(0),
    //       title: const Text('Perfíl'),
    //       centerTitle: true,
    //     ),
    //     drawer: const CustomDrawerWidget(),
    //     body: Center(
    //       child: Column(
    //         children: [
    //           (Preferences.img == '')
    //               ? const CircleAvatar(
    //                   radius: 80,
    //                   child: Icon(Icons.photo, size: 50),
    //                 )
    //               : CircleAvatar(
    //                   radius: 80,
    //                   backgroundImage: NetworkImage(Preferences.img),
    //                 ),
    //           Text(Preferences.nombre),
    //           Text(Preferences.apellido),
    //           Text(Preferences.ciudad),
    //           Text(Preferences.pais),
    //           (Preferences.genero != 1)
    //               ? const Text('Genero: Femenino')
    //               : const Text('Genero: Masculino'),
    //         ],
    //       ),
    //     ),
    //   ),
    // );