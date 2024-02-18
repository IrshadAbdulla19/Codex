import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/widgets/commen_card_widget.dart';
import 'package:irshad_codex/presentation/widgets/commen_text_widgets.dart';

class ProuductListScreen extends StatelessWidget {
  const ProuductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        physics: BouncingScrollPhysics(),
        separatorBuilder: (context, index) => kHeight10,
        itemBuilder: (context, index) {
          return ProductListItem(
            salesPrice: "200",
            name: "urname",
            purchasePrice: "190",
            boxNum: "128",
          );
        },
        itemCount: 10,
      ),
    );
  }
}

class ProductListItem extends StatelessWidget {
  const ProductListItem(
      {super.key,
      required this.name,
      required this.salesPrice,
      required this.purchasePrice,
      required this.boxNum});
  final String name;
  final String salesPrice;
  final String purchasePrice;
  final String boxNum;
  @override
  Widget build(BuildContext context) {
    return CommenCardWidget(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            smallHeadText(name),
            Column(
              children: [
                Text(boxNum),
                Text("Box"),
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sales Price"),
                smallHeadText("₹ $salesPrice"),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Purchase Price"),
                smallHeadText("₹ $purchasePrice"),
              ],
            ),
            Icon(Icons.home_work_outlined)
          ],
        ),
      ],
    ));
  }
}
