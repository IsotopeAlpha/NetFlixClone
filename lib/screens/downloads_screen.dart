import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/data/data.dart';

class Downloads extends StatelessWidget {
  const Downloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(3),
                width: screenSize.width * 0.8,
                height: screenSize.height * 0.09,
                child: Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      "Smart Downloads",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text("ON",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Icon(Icons.edit_outlined, color: Colors.white)
            ],
          ),
          Container(
            height: screenSize.height * 0.9,
            width: screenSize.width,
            child: ListView.builder(
                itemCount: downloads.length,
                itemBuilder: ((context, index) {
                  return Container(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          width: screenSize.width * 0.9,
                          child: Row(children: [
                            Image.asset(
                              downloads[index].imageUrl!,
                              width: screenSize.width * 0.3,
                              fit: BoxFit.fill,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              width: screenSize.width * 0.55,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    downloads[index].name ?? "",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "${downloads[index].episodes} Episodes | ${downloads[index].size}",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ]),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        )
                      ],
                    ),
                  );
                })),
          )
        ],
      ))),
    );
  }
}
