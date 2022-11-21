import 'package:flutter/material.dart';
import 'package:sesion_9/preferences/preferences.dart';
import 'package:sesion_9/widgets/index.dart';

class ConfigScreen extends StatefulWidget {
  const ConfigScreen({super.key});

  @override
  State<ConfigScreen> createState() => _ConfigScreenState();
}

class _ConfigScreenState extends State<ConfigScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuración'),
        centerTitle: true,
      ),
      drawer: const CustomDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(children: [
          Column(
          children: [
            CustomTextFieldWidget(
              initialValue: Preferences.img,
              keyboardType: TextInputType.text,
              hintText: 'Foto de perfil',
              prefixIcon: const Icon(Icons.photo),
              onChanged: (value) {
                Preferences.img = value;
                setState(() {});
              },
            ),
            CustomTextFieldWidget(
              initialValue: Preferences.nombre,
              keyboardType: TextInputType.name,
              hintText: 'Nombres',
              prefixIcon: const Icon(Icons.person),
              onChanged: (value) {
                Preferences.nombre = value;
                setState(() {});
              },
            ),
            CustomTextFieldWidget(
              initialValue: Preferences.apellido,
              keyboardType: TextInputType.name,
              hintText: 'Apellidos',
              prefixIcon: const Icon(Icons.person),
              onChanged: (value) {
                Preferences.apellido = value;
                setState(() {});
              },
            ),
            CustomTextFieldWidget(
              initialValue: Preferences.email,
              keyboardType: TextInputType.name,
              hintText: 'E-mail',
              prefixIcon: const Icon(Icons.mail),
              onChanged: (value) {
                Preferences.email = value;
                setState(() {});
              },
            ),
            CustomTextFieldWidget(
              initialValue: Preferences.telefono,
              keyboardType: TextInputType.name,
              hintText: 'Teléfono',
              prefixIcon: const Icon(Icons.phone_android),
              onChanged: (value) {
                Preferences.telefono = value;
                setState(() {});
              },
            ),
            CustomTextFieldWidget(
              initialValue: Preferences.ciudad,
              keyboardType: TextInputType.name,
              hintText: 'Ciudad',
              prefixIcon: const Icon(Icons.location_city),
              onChanged: (value) {
                Preferences.ciudad = value;
                setState(() {});
              },
            ),
            CustomTextFieldWidget(
              initialValue: Preferences.pais,
              keyboardType: TextInputType.name,
              hintText: 'Pais',
              prefixIcon: const Icon(Icons.location_on),
              onChanged: (value) {
                Preferences.pais = value;
                setState(() {});
              },
            ),
            RadioListTile(
              activeColor: Colors.green,
              value: 1,
              groupValue: Preferences.genero,
              title: const Text('Masculino'),
              onChanged: (value) {
                Preferences.genero = value ?? 1;
                setState(() {});
              },
            ),
            RadioListTile(
              activeColor: Colors.green,
              value: 2,
              groupValue: Preferences.genero,
              title: const Text('Femenino'),
              onChanged: (value) {
                Preferences.genero = value ?? 2;
                setState(() {});
              },
            ),
          ],
        ),
        ],) 
        
      ),
    );
  }
}