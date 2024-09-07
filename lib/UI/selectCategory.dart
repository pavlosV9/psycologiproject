import 'package:flutter/material.dart';
import 'package:psycologi/Providers/mainProvider.dart';
import 'package:psycologi/models/Categories.dart';
import 'package:psycologi/styles/styles.dart';
import 'package:provider/provider.dart';

class Selectcategory extends StatefulWidget {
  const Selectcategory({super.key});

  @override
  _CityPageState createState() => _CityPageState();
}

class _CityPageState extends State<Selectcategory> {
  late ScrollController _scrollController; // ScrollController to track scrolling
  double _scrollProgress = 0.0; // Variable to track scroll progress

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {
        // Calculate the scroll progress percentage
        if (_scrollController.position.maxScrollExtent != 0) {
          _scrollProgress = _scrollController.position.pixels /
              _scrollController.position.maxScrollExtent;
        }
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mainProvider = Provider.of<MainProvider>(context);
    List<Category> categories = mainProvider.getCategoriesList();

    return Scaffold(
backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          // Linear progress indicator for scrollable content
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: LinearProgressIndicator(
              value: _scrollProgress, // Shows scroll progress
              minHeight: 5, // Customize the height of the indicator
              backgroundColor: Colors.grey[300],
              color: Colors.blue, // Customize the color of the progress
            ),
          ),
          Expanded(
            child: SafeArea(
              child: ListView.builder(
                controller: _scrollController, // Attach scroll controller
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.0),
                itemCount: categories.length, // Ensure correct item count from categories
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Add any action when tapping the city if needed
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.99,
                          height: MediaQuery.of(context).size.height * 0.18,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(categories[index].imgUrl), // Correct usage of AssetImage
                              fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.40), BlendMode.darken)
                            ),
                            border: Border.all(color: Colors.black54, width: 2),
                            borderRadius: BorderRadius.circular(15), // Add a border radius
                          ),

                          child: Stack(
                            alignment: Alignment.center, // Center the text inside the stack
                            children: <Widget>[
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16.0), // Padding for the text
                                  child: Text(
                                    '${categories[index].categoryName}', // Display category name
                                    style: overImage, // Your custom text style
                                    textAlign: TextAlign.center, // Center the text horizontally
                                    softWrap: true, // Allow the text to wrap
                                    overflow: TextOverflow.visible, // Ensure the text is visible
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
