import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String iamgeUrl;

  SlideInfo({
    required this.title, 
    required this.caption, 
    required this.iamgeUrl});
}


final slides = <SlideInfo>[
  SlideInfo(title: 'Busca comida', caption: 'Proident ex commodo magna pariatur laborum nisi mollit.', iamgeUrl:'assets/images/1.png'),
  SlideInfo(title: 'Entrega rapida', caption: 'Exercitation sit eiusmod exercitation velit non ut ea proident elit incididunt proident in do nulla.', iamgeUrl:'assets/images/2.png'),
  SlideInfo(title: 'Disfruta la comida', caption: 'Sint anim qui id sunt eiusmod fugiat aute veniam ipsum adipisicing consequat deserunt officia reprehenderit.', iamgeUrl:'assets/images/3.png'),
];


class AppTutorialScreen extends StatelessWidget {
  static const name = 'tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: slides.map((slideData) => _Slide(
          title: slideData.title, 
          caption: slideData.caption, 
          iamgeUrl: slideData.iamgeUrl)).toList(),
      ),
    );
  }
}


// ignore: unused_element
class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String iamgeUrl;
  const _Slide({
    required this.title,
     required this.caption,
      required this.iamgeUrl
      });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
