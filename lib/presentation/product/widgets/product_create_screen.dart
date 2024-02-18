import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/customer/widgets/create_customer.dart';
import 'package:irshad_codex/presentation/widgets/app_bar_widget.dart';

class ProductCreateScreen extends StatelessWidget {
  ProductCreateScreen({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBarWidget(context, "Product Create", [
        Icon(
          Icons.abc,
          color: kWhite,
        )
      ]),
      body: Column(
        children: [
          Card(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              elevation: 8,
              color: Colors.white,
              shadowColor: primaryBlack,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    TextFormWidget(
                      controller: controller,
                      head: "Party name",
                      widget: Text(
                        "*",
                        style: TextStyle(color: kRed),
                      ),
                    ),
                  ],
                ),
              )),
          DefaultTabController(
            length: 3, // Number of tabs
            child: Column(
              children: [
                const TabBar(
                  tabs: [
                    Tab(
                      child: Text(
                        "Pricing",
                        style: TextStyle(color: kBlack),
                      ),
                    ),
                    Tab(
                        child: Text(
                      "Stock",
                      style: TextStyle(color: kBlack),
                    )),
                    Tab(
                        child: Text(
                      "Others",
                      style: TextStyle(color: kBlack),
                    )),
                  ],
                ),
                SizedBox(
                  height: 500, // Height of Tab Bar View
                  child: TabBarView(
                    children: [
                      // Contents of Tab 1
                      Column(
                        children: [
                          Card(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              elevation: 8,
                              color: Colors.white,
                              shadowColor: primaryBlack,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    TextFormWidget(
                                      controller: controller,
                                      head: "Opening Balance",
                                      widget: Text(
                                        "*",
                                        style: TextStyle(color: kRed),
                                      ),
                                    ),
                                    TextFormWidget(
                                      controller: controller,
                                      head: "Sales Price",
                                      widget: Text(
                                        "*",
                                        style: TextStyle(color: kRed),
                                      ),
                                    ),
                                    TextFormWidget(
                                      controller: controller,
                                      head: "Purchase Price",
                                      widget: Text(
                                        "*",
                                        style: TextStyle(color: kRed),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormWidget(
                                            controller: controller,
                                            head: "HSN",
                                            widget: Text(
                                              "*",
                                              style: TextStyle(color: kRed),
                                            ),
                                          ),
                                        ),
                                        kWidth10,
                                        Expanded(
                                          child: TextFormWidget(
                                            controller: controller,
                                            head: "GST",
                                            widget: Text(
                                              "*",
                                              style: TextStyle(color: kRed),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )),
                          ElevatedButton(
                              onPressed: () {}, child: const Text("Save"))
                        ],
                      ),
                      // Contents of Tab 2
                      const Center(
                        child: Text('Tab 2 Content'),
                      ),
                      // Contents of Tab 3
                      const Center(
                        child: Text('Tab 3 Content'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
