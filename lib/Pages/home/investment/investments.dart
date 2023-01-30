import 'package:app_nubank/utils/colors_standart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Investments extends StatefulWidget {
  const Investments({super.key});

  @override
  State<Investments> createState() => _InvestmentsState();
}

class _InvestmentsState extends State<Investments> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _textInvestments(),
          _investmentsValue(),
          _consultValue(),
        ],
      ),
    );
  }

  _textInvestments() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text('Investimentos',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Icon(MdiIcons.chevronRight)
      ],
    );
  }

  _investmentsValue() {
    return const Padding(
      padding: EdgeInsets.only(top: 16.0),
      child: Text(
        'O jeito Nu de investir: sem asteriscos, \n linguagem fácil a partir de R\$1. Saiba mais.',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }

  _consultValue() {
    return Container(
      margin: const EdgeInsets.only(top: 12, bottom: 12),
      decoration: BoxDecoration(
          color: greyColor, borderRadius: BorderRadius.circular(18)),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const Icon(MdiIcons.cash),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: const Text(
              'Consultar saldo para transferencia',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
