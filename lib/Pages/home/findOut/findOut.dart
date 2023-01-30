import 'package:app_nubank/Pages/home/findOut/models/card_find_out_more.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FindOut extends StatefulWidget {
  const FindOut({super.key});

  @override
  State<FindOut> createState() => _FindOutState();
}

class _FindOutState extends State<FindOut> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Descubra mais',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          findOutCard(),
        ],
      ),
    );
  }

  findOutCard() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CardFindOutMore(
              imagem: 'assets/images/parcele.png',
              title: 'Parcele comprar no app',
              description: 'Sua liberdade  financeira',
              buttonText: 'Conhecer'),
          const SizedBox(
            width: 20,
          ),
          CardFindOutMore(
              imagem: 'assets/images/portabilidade.png',
              title: 'Portabilidade de salário',
              description: 'Sua liberdade  financeira começa aqui',
              buttonText: 'Conhecer'),
          const SizedBox(
            width: 20,
          ),
          CardFindOutMore(
              imagem: 'assets/images/indica.jpg',
              title: 'Indique seus amigos',
              description: 'Sua liberdade  financeira começa aqui',
              buttonText: 'Conhecer'),
        ],
      ),
    );
  }
}
