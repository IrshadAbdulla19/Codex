import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
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
              )),
          Container(
            // width: MediaQuery.of(context).size.width *
            //     0.75, // Adjust width as needed
            child: DefaultTabController(
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
                                )),
                            Card(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              elevation: 8,
                              color: Colors.white,
                              shadowColor: primaryBlack,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.abc),
                                    AutoSizeText("data"),
                                    Spacer(),
                                    Icon(Icons.navigate_next_sharp)
                                  ],
                                ),
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
