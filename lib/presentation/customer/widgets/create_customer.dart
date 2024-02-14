import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';

class CreateCustomerScreen extends StatelessWidget {
  const CreateCustomerScreen({super.key});

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
              shadowColor: kMaterialPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    TextFormWidget(),
                    TextFormWidget(),
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
                  TabBar(
                    tabs: [
                      Tab(text: 'Bussiness info'),
                      Tab(text: 'Credit Info'),
                      Tab(text: 'Other Details'),
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
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                elevation: 8,
                                color: Colors.white,
                                shadowColor: kMaterialPrimaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Column(
                                    children: [
                                      TextFormWidget(),
                                      TextFormWidget(),
                                    ],
                                  ),
                                )),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              elevation: 8,
                              color: Colors.white,
                              shadowColor: kMaterialPrimaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
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
                                onPressed: () {}, child: Text("Save"))
                          ],
                        ),
                        // Contents of Tab 2
                        Center(
                          child: Text('Tab 2 Content'),
                        ),
                        // Contents of Tab 3
                        Center(
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
  const TextFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AutoSizeText("Party Name"),
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
