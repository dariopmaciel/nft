import 'package:flutter/material.dart';
import 'package:nft/widgets/image_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue,
      backgroundColor: const Color(0xff010101),
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  SizedBox(height: 30),
                  ImageListView(
                    startIndex: 1,
                    duration: 25,
                  ),
                  SizedBox(height: 8),
                  ImageListView(
                    startIndex: 11,
                    duration: 45,
                  ),
                  SizedBox(height: 8),
                  ImageListView(
                    startIndex: 21,
                    duration: 65,
                  ),
                  SizedBox(height: 8),
                  ImageListView(
                    startIndex: 31,
                    duration: 30,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            left: 24,
            right: 24,
            child: Container(
              color: Colors.black45,
              height: 80,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "Art com NFTs",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "From Flutter UI Dev learned by Dario.",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18,
                      ),
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
