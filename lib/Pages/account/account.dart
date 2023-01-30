import 'package:app_nubank/controllers/controller_home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_accountChevron(), const SizedBox(height: 12), _money()],
      ),
    );
  }

  _accountChevron() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Conta',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Icon(MdiIcons.chevronRight)
      ],
    );
  }

  _money() {
    return GetBuilder<ControllerHomePage>(
        init: ControllerHomePage(),
        builder: (context) {
          return Text(
            context.saldo,
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          );
        });
  }
}
