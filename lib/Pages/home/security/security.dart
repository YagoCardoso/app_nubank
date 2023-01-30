import 'package:app_nubank/utils/colors_standart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SecurityLife extends StatefulWidget {
  const SecurityLife({super.key});

  @override
  State<SecurityLife> createState() => _SecurityLifeState();
}

class _SecurityLifeState extends State<SecurityLife> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Wrap(
        direction: Axis.vertical,
        spacing: 12,
        crossAxisAlignment: WrapCrossAlignment.start,
        children: [
          const Text(
            'Seguros',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Proteção para você cuidar do que importa',
            style: TextStyle(color: Colors.grey),
          ),
          _securityButton(context),
        ],
      ),
    );
  }

  _securityButton(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width - 32,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: greyColor),
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Icon(MdiIcons.heartOutline),
                SizedBox(width: 12),
                Text(
                  'Seguro vida',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              'Conhecer',
              style: TextStyle(color: background, fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}
