import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/data/data.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(10),
        width: screenSize.width,
        height: screenSize.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[700],
                    hintText: "Search for a show, movies and more",
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Colors.white,
                    suffixIcon: Icon(Icons.mic),
                    suffixIconColor: Colors.white,
                    border: OutlineInputBorder())),
            SizedBox(
              height: screenSize.height * 0.01,
            ),
            Text(
              "Top Search",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: screenSize.height * 0.01,
            ),
            SizedBox(
              height: screenSize.height * 0.7,
              child: ListView.builder(
                  itemCount: upcoming.length,
                  itemBuilder: ((context, index) {
                    return Container(
                      padding: EdgeInsets.only(bottom: 5),
                      width: screenSize.width,
                      height: 80,
                      child: Row(
                        children: [
                          Image.asset(
                            upcoming[index].imageUrl!,
                            width: screenSize.width * 0.25,
                            fit: BoxFit.fill,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 5, right: 10),
                            width: screenSize.width * 0.7,
                            height: screenSize.height,
                            color: Colors.grey[900],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  upcoming[index].name!,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.play_circle_outline,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  })),
            )
          ],
        ),
      )),
    );
  }
}
