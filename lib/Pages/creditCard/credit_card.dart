import 'package:app_nubank/controllers/controller_home_page.dart';
import 'package:app_nubank/utils/colors_standart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Wrap(
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.start,
        spacing: 16,
        children: [
          //_iconCreditCard(),
          _textCreditCard(),
          _invoice(),
          _limitDisponible(),
          _installments(),
        ],
      ),
    );
  }

  _iconCreditCard() {
    return const Icon(MdiIcons.creditCard);
  }

  _textCreditCard() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Cartão de Crédito',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        Icon(MdiIcons.chevronRight)
      ],
    );
  }

  _invoice() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Fatura Atual',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          height: 12,
        ),
        GetBuilder<ControllerHomePage>(
            init: ControllerHomePage(),
            builder: (controllerHomePage) {
              return Text(
                controllerHomePage.creditCardValue,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              );
            })
      ],
    );
  }

  _limitDisponible() {
    return const Text(
      'Limite disponivel de R\$ 4.200',
      style: TextStyle(color: Colors.grey),
    );
  }

  _installments() {
    return Container(
      margin: const EdgeInsets.only(top: 4, bottom: 16),
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: BoxDecoration(
          color: greyColor, borderRadius: BorderRadius.circular(15)),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        child: const Text(
          'Parcelar compras',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
