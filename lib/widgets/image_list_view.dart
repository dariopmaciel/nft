import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImageListView extends StatefulWidget {
  const ImageListView(
      {super.key, required this.startIndex, this.duration = 30});

  final int startIndex;
  final int duration;

  @override
  State<ImageListView> createState() => _ImageListViewState();
}

class _ImageListViewState extends State<ImageListView> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();

    _scrollController.addListener(() {
      //Detect if is end of the list view
      if (_scrollController.position.atEdge) {
        _autoScroll();
      }
    });

//add to granted that controller has been attacted to list view
    //WidgetsBinding.instance?.addPostFrameCallback((_) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _autoScroll();
    });
  }

  _autoScroll() {
    final _currentScrollPosition = _scrollController.offset;
    final _scrollEndPosition = _scrollController.position.maxScrollExtent;
    scheduleMicrotask(() {
      _scrollController.animateTo(
        _currentScrollPosition == _scrollEndPosition ? 0 : _scrollEndPosition,
        duration: Duration(seconds: widget.duration),
        curve: Curves.linear,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 1.96 * pi,
      child: SizedBox(
        height: 130,
        child: ListView.builder(
          controller: _scrollController,
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _ImageTile(
                image: "assets/nfts/${widget.startIndex + index}.png");
          },
        ),
      ),
    );
  }
}

class _ImageTile extends StatelessWidget {
  //const _ImageTile({Key? key, required this.image}) : super(key: key);
  //ou
  const _ImageTile({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: image,
      child: Image.asset(
        image,
        width: 130,
              ),
    );
  }
}
