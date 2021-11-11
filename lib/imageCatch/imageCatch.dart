import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart'; 


class NetImgCatch extends StatefulWidget {
  const NetImgCatch({Key? key}) : super(key: key);

  @override
  _NetImgCatchState createState() => _NetImgCatchState();
}

class _NetImgCatchState extends State<NetImgCatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IMage Catcher"),
        centerTitle: true,
      ),

      body: Center(child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),

        ),
        child: CachedNetworkImage(imageUrl: 'https://images.unsplash.com/photo-1636622433525-127afdf3662d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1932&q=80'),
      )),
    );
  }
}
