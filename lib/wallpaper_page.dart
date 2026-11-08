import 'package:classico_as/appRoute.dart';
import 'package:classico_as/details_page.dart';
import 'package:classico_as/settings_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WallpaperPage extends StatelessWidget{

  List<Map<String,dynamic>> gridData = [
    {
      "name": "Nature",
      "url": "https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp"
    },
    {
      "name": "Building",
      "url": "https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp"
    },
    {
      "name": "Vehicles",
      "url": "https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp"
    },
    {
      "name": "Fruits",
      "url": "https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp"
    },
    {
      "name": "Medicines",
      "url": "https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallpaper title"),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) => SettingsPage()));
          }, icon: Icon(Icons.settings))
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1/1,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5
        ),
          itemCount: gridData.length,
          itemBuilder: (_, index){
            return InkWell(
              onTap: (){
                // Modern way
                Navigator.pushNamed(context, AppRoutes.pageDetailsRoute, arguments: gridData[index]);
                // Old traditional way
                // Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(title: gridData[index]["name"])));
                
              },
              child: Hero(
                tag: "${gridData[index]["name"]}",
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                        image: DecorationImage(image: NetworkImage(gridData[index]["url"]))
                    ),
                    child: Center(
                      child: Container(
                          width: double.infinity,
                          height: 50,
                          color: Colors.grey.shade200,
                          child: Center(
                              child: Text(gridData[index]["name"],style: TextStyle(fontSize: 12,fontWeight: .bold,color: Colors.black)))),
                    )
                ),
              ),
            );
          })
    );
  }

  // Widget gridWidget({required String imageURl, required String name}) {
  //   return
  //     InkWell(
  //       onTap: (){
  //         Navigator.pushNamed(context, "/details");
  //       },
  //       child: Container(
  //           decoration: BoxDecoration(
  //               borderRadius: BorderRadius.circular(10),
  //               color: Colors.blue,
  //               image: DecorationImage(image: NetworkImage(imageURl))
  //           ),
  //           child: Center(
  //             child: Container(
  //                 width: double.infinity,
  //                 height: 50,
  //                 color: Colors.grey.shade200,
  //                 child: Center(
  //                     child: Text(name,style: TextStyle(fontSize: 12,fontWeight: .bold,color: Colors.black)))),
  //           )
  //       ),
  //     );
  // }

}


// Grid View Count Widget
//GridView.count(
//         crossAxisCount: 2,
//         crossAxisSpacing: 5,
//         mainAxisSpacing: 10,
//         childAspectRatio: 9/16,
//         children: [
//          gridWidget(),
//           gridWidget(),
//           gridWidget()
//         ],
//       )