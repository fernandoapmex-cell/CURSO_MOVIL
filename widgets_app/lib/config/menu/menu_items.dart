import 'package:flutter/material.dart';

class MenuItem{
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({required this.title,required this.subtitle,required this.link,required this.icon});

}

const appMenuItems =<MenuItem>[
  MenuItem(title:'Botones', subtitle: 'Varios botones en Flutter', link: '/buttons', icon: Icons.smart_button_outlined),
  MenuItem(title:'Tarjetas', subtitle: 'Contenedor estilizado', link: '/cards', icon: Icons.credit_card_outlined),
  MenuItem(title:'Progress Indicators', subtitle: 'Generales y controlados', link: '/progress', icon: Icons.refresh_rounded),
  MenuItem(title:'Snackbars y Dialogos', subtitle: 'Indicadores en pantalla', link: '/snackbar', icon: Icons.info_outline_rounded),
  MenuItem(title: 'Animated Container', subtitle: 'Stateful Widget animado', link: '/animated', icon: Icons.check_box_outline_blank),
  MenuItem(title: 'UI Controls', subtitle: 'Controles de interfaz de usuario', link: '/ui_controls', icon: Icons.settings_input_component_outlined),
  MenuItem(title: 'Introduccion a la aplicacion', subtitle: 'pequeño tutorial introductorio', link: '/tutorial', icon: Icons.accessibility_new_outlined),
];