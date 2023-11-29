class ActionModel {
  final String icon;
  final String label;
  final String description;

  ActionModel({
    required this.icon,
    required this.label,
    required this.description,
  });
}

List<ActionModel> actionItems = [
  ActionModel(
    icon: 'assets/home1.png',
    label: "Customer Care",
    description:
        "Our customer care service line is available from 8 -9pm week days and 9 - 5 weekends - tap to call us today",
  ),
  ActionModel(
    icon: 'assets/home1.png',
    label: "Mes commandes",
    description:
        "Request for a driver to pick up or deliver your package for you",
  ),
  ActionModel(
    icon: 'assets/home1.png',
    label: "Fund your wallet",
    description:
        "To fund your wallet is as easy as ABC, make use of our fast technology and top-up your wallet today",
  ),
  ActionModel(
    icon: 'assets/home1.png',
    label: "Book a Rider",
    description:
        "To fund your wallet is as easy as ABC, make use of our fast technology and top-up your wallet today",
  ),
];
