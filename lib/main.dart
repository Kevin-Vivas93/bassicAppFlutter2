import 'package:flutter/material.dart';
// import 'dart:ui';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
// Inicio de creación de Sección del título

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Lake Dragon ball',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Goku, Kakaroto',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

// Final de creación de Sección del título

// Inicio de Definición de botones

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

// Final de Definición de botones

// Inicio de texto

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Había una vez un poderoso guerrero saiyajin llamado Goku.'
        ' Nacido en el lejano Planeta Vegeta, fue enviado a la Tierra'
        'cuando era solo un bebé para escapar de la destrucción de su hogar.'
        ' Criado por un anciano llamado Son Gohan, Goku creció con una fuerza increíble'
        ' y una sed insaciable de superación.'
        'Pero el verdadero poder de Goku no solo radicaba en su fuerza física,'
        ' sino en su corazón puro y su deseo de proteger a sus seres queridos. '
        'A medida que avanzaba en su viaje, Goku también descubría la importancia de la familia y la amistad.',
        softWrap: true,
      ),
    );

// Final de texto

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Reflexión de Goku'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/meditacion.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
