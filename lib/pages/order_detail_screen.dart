import 'package:ascolin/model/order_model.dart';
import 'package:flutter/material.dart';

import '../utils/reusable_signup_container.dart';

class OrderDetailScreen extends StatelessWidget {
  final OrderModel order;

  const OrderDetailScreen({
    super.key,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Order Detail",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tracking Number",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "${order.trackingId}",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF04009A),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Package Status",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[600],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: "${order.status}" == 'Réceptionné en Chine'
                        ? Colors.green
                        : Colors.greenAccent,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "${order.status}",
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontSize: 14, // Adjust the font size as needed
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            StatusRow(
              title: "${order.status}",
              label: "July 7 2022 08:00am",
            ),
            StatusRow(
              title: "En cours d’acheminement",
              label: "July 7 2022 08:00am",
            ),
            StatusRow(
              title: "Receptionné",
              label: "July 7 2022 08:00am",
            ),
            StatusRow(
              title: "Livré au client",
              label: "July 7 2022 08:00am",
            ),
            SizedBox(height: 20),
            Text(
              "Package Information",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF04009A),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Description",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "${order.description}",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Type de transport",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "${order.transportType?.label}",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 25),
            Text(
              "Other details",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Type de colis",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[600],
                  ),
                ),
                Text(
                  "${order.typeColis?.label}",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFEC8000),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Poids",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[600],
                  ),
                ),
                Text(
                  "${order.unit?.label}",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFEC8000),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tracking Number",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[600],
                  ),
                ),
                Text(
                  "${order.trackingId}",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFEC8000),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Divider(thickness: 2),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Quantité",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[600],
                  ),
                ),
                Text(
                  "${order.quantity}",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFEC8000),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Prix/unité",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[600],
                  ),
                ),
                Text(
                  "${order.pricing?.price}/${order.unit?.label}",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFEC8000),
                  ),
                ),
              ],
            ),
            Divider(thickness: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Montant á payer",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    // color: Colors.grey[600],
                  ),
                ),
                Text(
                  "${order.pricing!.price! * order.quantity!}",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFEC8000),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            ReusableSignUpContainer(
              onTap: () {
                // Constant.navigatePush(context, SendAPackagePage());
              },
              text: 'Payer la facture',
              margin: EdgeInsets.only(bottom: 30),
              backgroundColor: Color(0xFF0560FA),
            ),
          ],
        ),
      ),
    );
  }
}

class StatusRow extends StatelessWidget {
  final String title;
  final String label;

  const StatusRow({
    super.key,
    required this.title,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: Row(
        children: [
          Column(
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  border: Border.all(color: Colors.black),
                ),
                child: Center(
                  child: Icon(
                    Icons.check,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 35,
                child: VerticalDivider(),
              )
            ],
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFEC8000),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
