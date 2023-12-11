import 'package:flutter/material.dart';
import 'package:funlearn/details.dart';
import 'package:get/get.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  List homepageimagelist = [
    "https://hips.hearstapps.com/roa.h-cdn.co/assets/15/28/1436450824-acr.jpg?crop=1xw:1xh;center,top&resize=980:*",
    "https://hips.hearstapps.com/roa.h-cdn.co/assets/15/34/bmw-m5_2005_1600x1200_wallpaper_02.jpg?crop=1xw:1.0xh;center,top&resize=980:*",
    "https://hips.hearstapps.com/roa.h-cdn.co/assets/15/34/lamborghini-gallardo_2003_1600x1200_wallpaper_02.jpg?crop=1xw:1.0xh;center,top&resize=980:*",
    "https://hips.hearstapps.com/roa.h-cdn.co/assets/16/18/1462459120-audi-rs6-avant.jpg?crop=1xw:1xh;center,top&resize=980:*",
    "https://hips.hearstapps.com/hmg-prod/images/dw-burnett-pcoty22-8260-1671143390.jpg?crop=0.668xw:1.00xh;0.184xw,0&resize=640:*",
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
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.person))],
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
                child: GestureDetector(
                  onTap: () => Get.to(() => const DetailedView(),
                      arguments: homepageimagelist[index]),
                  child: Image.network(
                    homepageimagelist[index],
                    fit: BoxFit.fill,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
