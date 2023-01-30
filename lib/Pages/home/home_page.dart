import 'package:app_nubank/Pages/account/account.dart';
import 'package:app_nubank/Pages/actions/menu_itens.dart';
import 'package:app_nubank/Pages/creditCard/credit_card.dart';
import 'package:app_nubank/Pages/home/models/header.dart';
import 'package:app_nubank/Pages/home/security/security.dart';
import 'package:app_nubank/Pages/home/shopping/shopView.dart';
import 'package:app_nubank/utils/colors_standart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../creditCard/credit.dart';
import '../notification/notification_page.dart';
import 'findOut/findOut.dart';
import 'investment/investments.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: background,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Header(),
              Account(),
              MenuItens(),
              CreditCards(),
              NotificationPage(),
              Divider(
                thickness: 1.6,
              ),
              SizedBox(
                height: 12,
              ),
              CreditCard(),
              Divider(
                thickness: 1.6,
              ),
              Investments(),
              Divider(
                thickness: 1.6,
              ),
              SecurityLife(),
              Divider(
                thickness: 1.6,
              ),
              ShoppingView(),
              Divider(
                thickness: 1.6,
              ),
              FindOut(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ));
  }
}
