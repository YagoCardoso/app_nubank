// ignore_for_file: must_be_immutable

import 'package:app_nubank/utils/colors_standart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardFindOutMore extends StatelessWidget {
  String imagem;
  String title;
  String description;
  String buttonText;

  CardFindOutMore(
      {super.key,
      required this.imagem,
      required this.title,
      required this.description,
      required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Image.asset(
            imagem,
            fit: BoxFit.cover,
            width: 230,
          ),
          const SizedBox(
            height: 22,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            description,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: 22,
          ),
          Container(
            margin: const EdgeInsets.only(left: 12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: background,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Text(
              buttonText,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
