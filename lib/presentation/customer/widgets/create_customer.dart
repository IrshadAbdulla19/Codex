import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/widgets/commen_card_widget.dart';
import 'package:irshad_codex/presentation/widgets/commen_text_widgets.dart';

class CreateCustomerScreen extends StatelessWidget {
  CreateCustomerScreen({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Column(
        children: [
          CommenCardWidget(
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
                TextFormWidget(
                  controller: controller,
                  head: "Coustomer name",
                  widget: Text(
                    "*",
                    style: TextStyle(color: kRed),
                  ),
                ),
              ],
            ),
          ),
          DefaultTabController(
            length: 3, // Number of tabs
            child: Column(
              children: [
                const TabBar(
                  tabs: [
                    Tab(
                      child: Text(
                        "Bussiness info",
                        style: TextStyle(color: kBlack),
                      ),
                    ),
                    Tab(
                        child: Text(
                      "Credit Info",
                      style: TextStyle(color: kBlack),
                    )),
                    Tab(
                        child: Text(
                      "Other Details",
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
                          CommenCardWidget(
                            child: Column(
                              children: [
                                TextFormWidget(
                                  controller: controller,
                                  head: "",
                                  widget: Text(
                                    "*",
                                    style: TextStyle(color: kRed),
                                  ),
                                ),
                                TextFormWidget(
                                  controller: controller,
                                  head: "",
                                  widget: Text(
                                    "*",
                                    style: TextStyle(color: kRed),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const CommenCardWidget(
                            child: Row(
                              children: [
                                Icon(Icons.abc),
                                AutoSizeText("data"),
                                Spacer(),
                                Icon(Icons.navigate_next_sharp)
                              ],
                            ),
                          ),
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

class TextFormWidget extends StatelessWidget {
  const TextFormWidget(
      {super.key,
      required this.widget,
      required this.head,
      required this.controller});
  final Widget widget;
  final String head;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [smallHeadText(head), widget],
        ),
        kHeight10,
        TextFormField(
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
        ),
      ],
    );
  }
}
