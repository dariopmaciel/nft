import 'package:flutter/material.dart';
import 'package:nft/widgets/image_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  SizedBox(height: 10),
                  ImageListView(
                    startIndex: 2,
                    duration: 25,
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
