import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

   const MenuItems(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon
      });
}

const List<MenuItems> appMenuItems = [
  MenuItems(
  title: 'Botones',
  subTitle: 'varios botones en flutter',
  link: '/buttons',
  icon: Icons.smart_button_outlined),
  MenuItems(
    title: 'Tarjetas', 
    subTitle: 'Contenedor estilizado', 
    link: '/cards',
     icon: Icons.credit_card),
  MenuItems(
    title: 'ProgressIndicators', 
    subTitle: 'Generales y controlados', 
    link: '/progres_screen',
     icon: Icons.refresh_outlined),
  MenuItems(
    title: 'Snackbar', 
    subTitle: 'indicadores en pantalla', 
    link: '/snackbar_screen',
    icon: Icons.notification_add_outlined),
    MenuItems(
    title: 'Animated container', 
    subTitle: 'Stateful widget animado', 
    link: '/animated',
    icon: Icons.check_box_outline_blank),
    MenuItems(
    title: 'UI Controls + Tiles', 
    subTitle: 'Series de controles en Flutter', 
    link: '/ui_screen',
    icon: Icons.car_rental_rounded),
  
  
  
];
