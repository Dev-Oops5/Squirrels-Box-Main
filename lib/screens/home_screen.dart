import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              //Top Text
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Row(
                  children: [
                    const Text('MyBoxes',
                        style: TextStyle(
                            fontSize: 16, fontStyle: FontStyle.italic)),
                    Expanded(
                      child: Container(),
                    ),
                    const Text('Shared with me',
                        style: TextStyle(
                            fontSize: 16, fontStyle: FontStyle.italic)),
                  ],
                ),
              ),
              const Titles(texto: 'LAST BOXES USED'),
              LastBoxes(),
              const Titles(texto: 'BOXES'),

              Table(
                children: [
                  TableRow(children: [
                    Boxes(),
                    Boxes(),
                  ]),
                  TableRow(children: [
                    Boxes(),
                    Boxes(),
                  ]),
                  TableRow(children: [
                    Boxes(),
                    Boxes(),
                  ]),
                  TableRow(children: [
                    Boxes(),
                    Boxes(),
                  ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Titles extends StatelessWidget {
  final String texto;

  const Titles({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 10),
      child: Row(
        children: [
          Text(texto,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
                fontStyle: FontStyle.italic,
              )),
        ],
      ),
    );
  }
}

class LastBoxes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //TODO: Pegar texto a la izquierda

        const SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Swiper(
                  itemCount: 10,
                  layout: SwiperLayout.STACK,
                  itemWidth: 300,
                  itemHeight: 200,
                  itemBuilder: (_, int index) {
                    Text('$index');

                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const FadeInImage(
                        placeholder: AssetImage('assets/no-image.jpg'),
                        image:
                            NetworkImage('https://via.placeholder.com/300x400'),
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Boxes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //TODO: Pegar texto a la izquierda

        Container(
          margin: const EdgeInsets.all(15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 120,
              decoration: const BoxDecoration(
                color: Color.fromARGB(177, 230, 189, 56),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
