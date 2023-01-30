import 'package:app_nubank/utils/colors_standart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _income(
            texto1: "Seu ",
            texto2: "Informe de Rendimentos ",
            texto3: "2023 ja está disp...",
          ),
          _income(
            texto1: "NuVioleta ",
            texto2: "Investback automático ",
            texto3: "rende 100% do CDI",
          ),
          _income(
            texto1: "Empréstimo ",
            texto2: "Você tem limite de crédito ",
            texto3: "aproveite o menor juros",
          ),
        ],
      ),
    );
  }

  _income(
      {required String texto1,
      required String texto2,
      required String texto3}) {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(21),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: texto1,
              style: const TextStyle(color: Colors.black, fontSize: 12)),
          TextSpan(
              text: texto2, style: TextStyle(color: background, fontSize: 12)),
          TextSpan(
              text: texto3,
              style: const TextStyle(color: Colors.black, fontSize: 1)),
        ]),
      ),
    );
  }
}
