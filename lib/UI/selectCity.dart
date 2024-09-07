import 'package:flutter/material.dart';
import 'package:psycologi/Providers/mainProvider.dart';
import 'package:psycologi/models/Cities.dart';
import 'package:psycologi/styles/styles.dart';
import 'package:provider/provider.dart';

class SelectCity extends StatelessWidget {
  const SelectCity({super.key});

  @override
  Widget build(BuildContext context) {
    var mainProvider = Provider.of<MainProvider>(context);
    List<City> citiesList= mainProvider.getCitiesList();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView.builder(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.0), // MediaQuery for padding
          itemCount: citiesList.length, // Static number of items
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Handle tap, could navigate or do other UI interactions
              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.99,
                    height: MediaQuery.of(context).size.height * 0.189,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black54,
                        width: 2,
                      ),
                      image: DecorationImage(
                        image: AssetImage("${citiesList[index].imageUrl}"),
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.60), // Darken the image
                          BlendMode.darken, // Darken the image for better contrast with text
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15), // Rounded corners
                    ),
                    child: Stack(
                      alignment: Alignment.center, // Center the text inside the stack
                      children: <Widget>[
                        Center(
                          child: Text(
                            softWrap: true,
                            textAlign: TextAlign.center,
                            "${citiesList[index].nameCity}", // Static text for simplicity
                            style: overCityImage, // Custom text style from Text_Styles.dart
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
    );
  }
}
