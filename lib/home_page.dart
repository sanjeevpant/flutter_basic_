import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int selectedRadio = 0;
  bool isChecked = false;
  String selectedCity = "Delhi";

  List<String> cities = ["Delhi", "Dehradun", "Bangalore", "Pune"];

  double currentSliderValue = 0;
  RangeValues currentRangeValues = RangeValues(0, 10);

  List<Map<String, dynamic>> listData = [
    {"name": "Sanjeev", "color": Colors.blue},
    {"name": "Sandeep", "color": Colors.yellow},
    {"name": "Raj", "color": Colors.red},
    {"name": "Neelam", "color": Colors.grey},
    {"name": "Navya", "color": Colors.green},
    {"name": "Prerna", "color": Colors.amber},
  ];

  List<Map<String, dynamic>> chatData = [
    {
      "name": "Sanjeev",
      "message": "Hi My Name is Sanjeev Pant",
      "time": "11/11/26",
      "isAudio": false,
      "isImage": false,
      "profilePicUrl": "https://www.w3schools.com/images/picture.jpg",
      "seen": true,
    },
    {
      "name": "Sandeep",
      "message": "Hi My Name is Sandeep Pant",
      "time": "11/11/26",
      "isAudio": false,
      "isImage": false,
      "profilePicUrl": "https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp",
      "seen": true,
    },
    {
      "name": "Sanjeev",
      "message": "Hi My Name is Sanjeev Pant",
      "time": "11/11/26",
      "isAudio": false,
      "isImage": false,
      "profilePicUrl": "https://png.pngtree.com/png-clipart/20240906/original/pngtree-man-with-glasses-and-a-suit-in-a-circular-profile-icon-png-image_15951915.png",
      "seen": true,
    },
    {
      "name": "Sanjeev",
      "message": "Hi My Name is Sanjeev Pant",
      "time": "11/11/26",
      "isAudio": false,
      "isImage": false,
      "profilePicUrl": "https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp",
      "seen": true,
    },
    {
      "name": "Sanjeev",
      "message": "Hi My Name is Sanjeev Pant",
      "time": "11/11/26",
      "isAudio": false,
      "isImage": false,
      "profilePicUrl": "https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp",
      "seen": true,
    },
    {
      "name": "Sanjeev",
      "message": "Hi My Name is Sanjeev Pant",
      "time": "11/11/26",
      "isAudio": false,
      "isImage": false,
      "profilePicUrl": "https://www.w3schools.com/images/picture.jpg",
      "seen": true,
    },
    {
      "name": "Sanjeev",
      "message": "Hi My Name is Sanjeev Pant",
      "time": "11/11/26",
      "isAudio": false,
      "isImage": false,
      "profilePicUrl": "https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp",
      "seen": true,
    },
    {
      "name": "Sanjeev",
      "message": "Hi My Name is Sanjeev Pant",
      "time": "11/11/26",
      "isAudio": false,
      "isImage": false,
      "profilePicUrl": "https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp",
      "seen": true,
    },
    {
      "name": "Sanjeev",
      "message": "Hi My Name is Sanjeev Pant",
      "time": "11/11/26",
      "isAudio": false,
      "isImage": false,
      "profilePicUrl": "https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp",
      "seen": true,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        leading: TextButton(
          onPressed: () {
            print("Edit button tapped");
          },
          child: Text(
            "Edit",
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
              fontWeight: .normal,
            ),
          ),
        ),
        title: Text("Home", style: TextStyle(fontSize: 20, fontWeight: .bold)),
        backgroundColor: Colors.grey.shade200,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.edit_note, size: 32, color: Colors.blue),
          ),
        ],
      ),
      body: Container(child: Text("Name"))
    );
  }

  Widget listRow({required index}){
    return Row(
      // Removed the redundant outer Column
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
            chatData[index]["profilePicUrl"],
          ),
          radius: 30,
        ),
        SizedBox(width: 20),
        // This Expanded fixes your rendering error by constraining the inner layout
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Chat details (Name & Message)
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Fixed syntax (.start -> CrossAxisAlignment.start)
                      children: [
                        Text(
                          "${chatData[index]["name"]}",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ), // Fixed CrossAxisAlignment syntax
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "${chatData[index]["message"]}",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: .normal
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  // Time and Action Icon
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "${chatData[index]["time"]}",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      InkWell( onTap: (){},
                        child: Icon(
                          Icons.arrow_forward,
                          size: 16,
                          color: Colors.green,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Divider(color: Colors.grey.shade200)
            ],
          ),
        ),
      ],
    );
  }
}


// List View with Chats list
//Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 16.0,
//               vertical: 8.0,
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween, // Fixed syntax typo (.spaceBetween -> MainAxisAlignment.spaceBetween)
//               children: [
//                 Text(
//                   "BroadCast List",
//                   style: TextStyle(fontSize: 16, color: Colors.blue),
//                 ),
//                 Text(
//                   "New Group",
//                   style: TextStyle(fontSize: 16, color: Colors.blue),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: chatData.length,
//               itemBuilder: (_, index) {
//                 return Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: listRow(index: index),
//                 );
//               },
//             ),
//           ),
//         ],
//       )

// List View builder widget for dynamic content with memory efficient
//ListView.builder(
//           itemCount: listData.length,
//           itemBuilder: (_, index) {
//             return Container(
//                 width: 200,
//                 height: 100,
//                 color: listData[index]["color"],
//                 child: Center(
//                     child: Text(
//                         "${listData[index]["name"]} is the name of the person",
//                         style: TextStyle(fontSize: 12, fontWeight: .normal))
//                 ));
//           }
//         )

// List View Widget for creating all items not memory efficient
//ListView(
//         children: listData.map((element){
//         return Container(
//           width: 200,
//           height: 100,
//           color: element["color"],
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Center(
//               child: Text("${element["name"]} is the name of the person", style: TextStyle(fontSize: 12, fontWeight: .normal)),
//             ),
//           ),
//         );
//             }).toList()
//             ))

// Single Child ScrollView
//SingleChildScrollView(
//         child: Column(
//           children: listData.map((element){
//           return Container(
//             width: 200,
//             height: 100,
//             color: element["color"],
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Center(
//                 child: Text("${element["name"]} is the name of the person", style: TextStyle(fontSize: 12, fontWeight: .normal)),
//               ),
//             ),
//           );
//       }).toList()
//       )
//     )

// Range Slider Widget
//Center(
//         child: StatefulBuilder(
//           builder: (context,ss) {
//             return  RangeSlider(values: currentRangeValues,
//                 min: 0,
//                 max: 100,
//                 divisions: 5,
//                 activeColor: Color(0xfffffb00),
//                 labels: RangeLabels("${currentRangeValues.start}", "${currentRangeValues.end}"),
//                 onChanged: (values){
//                   currentRangeValues = values;
//                 ss((){});
//                 });
//           }
//         ),
//       )

// Slider
//Slider(value: currentSliderValue,
//                 min:0,
//                 max: 200,
//                 activeColor: Colors.yellow,
//                 divisions: 20,
//                 onChanged: (value){
//                 currentSliderValue = value;
//                 ss((){});
//                 })

// Drop Down Menu Button
// DropdownButton(
//               items: List.generate(cities.length, (index){
//               return DropdownMenuItem(
//                   value: cities[index],
//                   child: Text(cities[index]));
//             }), onChanged: (value){
//                 selectedCity = value!;
//                 ss((){});
//               },
//             value: selectedCity)

// Switch Button
//SwitchListTile(
//                       title: Text("Change the theme mode of the app"),
//                       subtitle: Text("Enable or disable the switch"),
//                       value: isChecked, onChanged: (value) {
//                     isChecked = value;
//                     ss((){
//                     });
//                   })

// CheckBoxListTile
// CheckboxListTile(
// controlAffinity: .leading,
// title: const Text('I have read Privacy and Policy documents for sharing confidential information'),
// value: isChecked,
// onChanged: (value) {
// isChecked = value!;
// ss(() {});
// },
// );

// Radio Button
// Row(
// children: [
// RadioMenuButton(value: 1,
// groupValue: selectedRadio,
// onChanged: (value) {
// selectedRadio = value!;
// setState(() {
//
// });
// },
// child: Text("Yes")),
// RadioMenuButton(value: 2,
// groupValue: selectedRadio,
// onChanged: (value) {
// selectedRadio = value!;
// setState(() {
//
// });
// },
// child: Text("No"))
// ],
// )
