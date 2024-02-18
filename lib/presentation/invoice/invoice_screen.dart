import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/widgets/commen_card_widget.dart';
import 'package:irshad_codex/presentation/widgets/commen_text_widgets.dart';

class InvoiceListScreen extends StatelessWidget {
  const InvoiceListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        physics: BouncingScrollPhysics(),
        separatorBuilder: (context, index) => kHeight10,
        itemBuilder: (context, index) {
          return InvoiceListItem(
            date: "2023-06-14",
            name: "urname",
            invoiceId: "INV001",
            boxNum: "128",
            isPaid: true,
          );
        },
        itemCount: 10,
      ),
    );
  }
}

class InvoiceListItem extends StatelessWidget {
  const InvoiceListItem(
      {super.key,
      required this.name,
      required this.invoiceId,
      required this.date,
      required this.boxNum,
      required this.isPaid});
  final String name;
  final String invoiceId;
  final String date;
  final String boxNum;
  final bool isPaid;
  @override
  Widget build(BuildContext context) {
    return CommenCardWidget(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                kHeight5,
                Text(invoiceId),
                kHeight5,
                Text(date),
                kHeight5,
                kHeight5
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(boxNum),
                kHeight5,
                Text(isPaid ? "Paid" : "Pending"),
              ],
            )
          ],
        ),
        Divider(
          height: 2,
          color: kBlack,
        ),
        kHeight10,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Icon(Icons.wechat_rounded),
                Text("Share on WhatsApp"),
              ],
            ),
            Text("₹ Record Invoice Payment")
          ],
        ),
      ],
    ));
  }
}
