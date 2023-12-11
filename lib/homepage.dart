import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  List homepageimagelist = [
    "https://carwow-uk-wp-1.imgix.net/chevrolet-corvette-c8-front-parked-1.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=1920",
    "https://carwow-uk-wp-0.imgix.net/Ford-GT-1.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=1920",
    "https://carwow-uk-wp-3.imgix.net/Audi-R8-5.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=1920",
    "https://carwow-uk-wp-1.imgix.net/18015-MC20BluInfinito-scaled-e1666008987698.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=1920",
    "https://carwow-uk-wp-1.imgix.net/01_296_GTB_34_ant-scaled.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=1920",
    "https://carwow-uk-wp-1.imgix.net/McLaren-720S-1.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=1920",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              height: 120,
              width: 120,
              child: Image.asset(
                "icon.png",
                fit: BoxFit.cover,
              ),
            ),
            const Center(child: Text("Home")),
          ],
        ),
        titleSpacing: 10,
      ),
      body: SizedBox(
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemCount: homepageimagelist.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  homepageimagelist[index],
                  fit: BoxFit.fill,
                ),
              );
            }),
      ),
    );
  }
}
