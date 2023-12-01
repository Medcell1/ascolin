
import 'package:ascolin/pages/send_a_package_page.dart';
import 'package:flutter/material.dart';

class ActionModel {
  final String icon;
  final String label;
  final String description;
  final dynamic onTap;

  ActionModel({
    this.onTap,
    required this.icon,
    required this.label,
    required this.description,
  });
}

List<ActionModel> actionItems(BuildContext context) {
  return [
    ActionModel(
      onTap: () {},
      icon: 'assets/home1.png',
      label: "Customer Care",
      description:
          "Our customer care service line is available from 8 -9pm week days and 9 - 5 weekends - tap to call us today",
    ),
    ActionModel(
      onTap: () {
        print('Heloo');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return SendAPackagePage();
            },
          ),
        );
      },
      icon: 'assets/home1.png',
      label: "Mes commandes",
      description:
          "Request for a driver to pick up or deliver your package for you",
    ),
    ActionModel(
      onTap: () {},
      icon: 'assets/home1.png',
      label: "Fund your wallet",
      description:
          "To fund your wallet is as easy as ABC, make use of our fast technology and top-up your wallet today",
    ),
    ActionModel(
      onTap: () {},
      icon: 'assets/home1.png',
      label: "Book a Rider",
      description:
          "To fund your wallet is as easy as ABC, make use of our fast technology and top-up your wallet today",
    ),
  ];
}
