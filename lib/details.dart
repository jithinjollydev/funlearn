import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailedView extends StatefulWidget {
  const DetailedView({super.key});

  @override
  State<DetailedView> createState() => _DetailedViewState();
}

class _DetailedViewState extends State<DetailedView> {
  String imageurl = "";
  @override
  void initState() {
    super.initState();
    imageurl = Get.arguments;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(""),
           ),
      body: Center(
        child: Image.network(imageurl),
      ),
    ));
  }
}
