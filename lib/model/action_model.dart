import 'package:ascolin/pages/delivery_succesful.dart';
import 'package:flutter/material.dart';

import '../pages/order_list_screen.dart';

class ActionModel {
  final String icon;
  final String label;
  final String description;
  final Widget nextPage;

  ActionModel({
    required this.icon,
    required this.label,
    required this.description,
    required this.nextPage,
  });
}

List<ActionModel> actionItems = [
  ActionModel(
    icon: 'assets/home1.png',
    label: "Customer Care",
    description:
        "Our customer care service line is available from 8 -9pm week days and 9 - 5 weekends - tap to call us today",
    nextPage: Placeholder(),
  ),
  ActionModel(
    icon: 'assets/home2.png',
    label: "Mes commandes",
    description:
        "Request for a driver to pick up or deliver your package for you",
    nextPage: DeliverySuccessful(),
  ),
  ActionModel(
    icon: 'assets/home3.png',
    label: "Fund your wallet",
    description:
        "To fund your wallet is as easy as ABC, make use of our fast technology and top-up your wallet today",
    nextPage: Placeholder(),
  ),
  ActionModel(
    icon: 'assets/home4.png',
    label: "Book a Rider",
    description: "Search for available driver within your area",
    nextPage: Placeholder(),
  ),
];
