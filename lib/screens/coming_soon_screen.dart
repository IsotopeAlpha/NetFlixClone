import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/data/data.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          padding: EdgeInsets.all(5),
          width: screenSize.width,
          height: screenSize.height,
          child: ListView.builder(
              itemCount: upcoming.length,
              itemBuilder: ((context, index) {
                return Container(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Column(
                    children: [
                      Image.asset(
                        upcoming[index].imageUrl!,
                        width: screenSize.width,
                        height: 250,
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(
                        height: screenSize.height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: screenSize.width * 0.55,
                            child: Text(
                              upcoming[index].name ?? "",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: screenSize.width * 0.35,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Icon(
                                      Icons.notifications_none,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Remind me",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.share_outlined,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Share",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: screenSize.height * 0.01,
                      ),
                      Text(
                        upcoming[index].description ?? "",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                );
              })),
        )),
      ),
    );
  }
}
