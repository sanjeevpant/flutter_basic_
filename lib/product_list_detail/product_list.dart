import 'package:classico_as/product_list_detail/custom_widgets/app_icon_round_bg.dart';
import 'package:classico_as/product_list_detail/product_list_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductList extends StatelessWidget {

  List<Map<String, dynamic>> products = [
    {
      "id": 1,
      "name": "Apple AirPods Pro (2nd Gen)",
      "brand": "Apple",
      "description":
          "Active noise cancellation with adaptive audio experience.",
      "price": 24999,
      "discount": 10,
      "finalPrice": 22499,
      "category": "Electronics",
      "rating": 4.7,
      "reviewsCount": 21000,
      "stock": 50,
      "isFeatured": true,
      "images": ["https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp"],
      "createdAt": "2025-01-01",
    },
    {
      "id": 2,
      "name": "Sony WH-1000XM5 Wireless Headphones",
      "brand": "Sony",
      "description":
          "Industry-leading noise cancellation and exceptional sound clarity.",
      "price": 29999,
      "discount": 15,
      "finalPrice": 25499,
      "category": "Electronics",
      "rating": 4.8,
      "reviewsCount": 15400,
      "stock": 35,
      "isFeatured": true,
      "images": ["https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp"],
      "createdAt": "2025-01-15",
    },
    {
      "id": 3,
      "name": "Samsung Galaxy Watch 6",
      "brand": "Samsung",
      "description":
          "Advanced sleep coaching, fitness tracking, and sleek design.",
      "price": 19999,
      "discount": 5,
      "finalPrice": 18999,
      "category": "Wearables",
      "rating": 4.5,
      "reviewsCount": 8900,
      "stock": 120,
      "isFeatured": false,
      "images": ["https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp"],
      "createdAt": "2025-02-01",
    },
    {
      "id": 4,
      "name": "Logitech MX Master 3S Mouse",
      "brand": "Logitech",
      "description": "Ergonomic wireless mouse with ultra-fast scrolling and quiet clicks.",
      "price": 9495,
      "discount": 0,
      "finalPrice": 9495,
      "category": "Accessories",
      "rating": 4.9,
      "reviewsCount": 32000,
      "stock": 0,
      "isFeatured": true,
      "images": ["https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp"],
      "createdAt": "2025-02-10",
    },
    {
      "id": 5,
      "name": "Dell UltraSharp 27\" 4K Monitor",
      "brand": "Dell",
      "description":
          "Brilliant color coverage and exceptional clarity for professionals.",
      "price": 45000,
      "discount": 12,
      "finalPrice": 39600,
      "category": "Electronics",
      "rating": 4.6,
      "reviewsCount": 4100,
      "stock": 15,
      "isFeatured": false,
      "images": ["https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp"],
      "createdAt": "2025-02-18",
    },
    {
      "id": 6,
      "name": "Apple iPhone 15 Pro",
      "brand": "Apple",
      "description":
          "Titanium design, A17 Pro chip, and a powerful camera system.",
      "price": 134900,
      "discount": 8,
      "finalPrice": 124108,
      "category": "Electronics",
      "rating": 4.9,
      "reviewsCount": 45000,
      "stock": 25,
      "isFeatured": true,
      "images": ["https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp"],
      "createdAt": "2025-02-20",
    },
    {
      "id": 7,
      "name": "Keychron K2 Mechanical Keyboard",
      "brand": "Keychron",
      "description": "Wireless mechanical keyboard with tactile switches and RGB lighting.",
      "price": 8499,
      "discount": 10,
      "finalPrice": 7649,
      "category": "Accessories",
      "rating": 4.7,
      "reviewsCount": 12300,
      "stock": 60,
      "isFeatured": false,
      "images": ["https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp"],
      "createdAt": "2025-02-25",
    },
    {
      "id": 8,
      "name": "Anker PowerCore 24K Power Bank",
      "brand": "Anker",
      "description": "Ultra-high capacity portable charger with 140W smart digital display.",
      "price": 12999,
      "discount": 15,
      "finalPrice": 11049,
      "category": "Accessories",
      "rating": 4.6,
      "reviewsCount": 6700,
      "stock": 200,
      "isFeatured": false,
      "images": ["https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp"],
      "createdAt": "2025-03-01",
    },
    {
      "id": 9,
      "name": "Bose Smart Soundbar 600",
      "brand": "Bose",
      "description":
          "Immersive Dolby Atmos soundbar for small to medium living spaces.",
      "price": 49999,
      "discount": 5,
      "finalPrice": 47499,
      "category": "Electronics",
      "rating": 4.4,
      "reviewsCount": 3100,
      "stock": 18,
      "isFeatured": true,
      "images": ["https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp"],
      "createdAt": "2025-03-05",
    },
    {
      "id": 10,
      "name": "Kindle Paperwhite (16 GB)",
      "brand": "Amazon",
      "description": "Now with a 6.8\" display, adjustable warm light, and waterproof design.",
      "price": 14999,
      "discount": 0,
      "finalPrice": 14999,
      "category": "Electronics",
      "rating": 4.8,
      "reviewsCount": 54000,
      "stock": 85,
      "isFeatured": false,
      "images": ["https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp"],
      "createdAt": "2025-03-12",
    },
    {
      "id": 11,
      "name": "Fitbit Charge 6",
      "brand": "Fitbit",
      "description": "Fitness tracker with built-in GPS, heart rate tracking, and Google tools.",
      "price": 16999,
      "discount": 20,
      "finalPrice": 13599,
      "category": "Wearables",
      "rating": 4.3,
      "reviewsCount": 9200,
      "stock": 70,
      "isFeatured": false,
      "images": ["https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp"],
      "createdAt": "2025-03-18",
    },
    {
      "id": 12,
      "name": "Razer BlackShark V2 Pro",
      "brand": "Razer",
      "description":
          "Definitive esports wireless gaming headset with hyperclear mic.",
      "price": 17999,
      "discount": 10,
      "finalPrice": 16199,
      "category": "Accessories",
      "rating": 4.6,
      "reviewsCount": 18500,
      "stock": 40,
      "isFeatured": true,
      "images": ["https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp"],
      "createdAt": "2025-03-22",
    },
    {
      "id": 13,
      "name": "DJI Osmo Pocket 3",
      "brand": "DJI",
      "description": "Pocket-sized gimbal camera with 1-inch CMOS sensor and 4K/120fps capability.",
      "price": 55000,
      "discount": 0,
      "finalPrice": 55000,
      "category": "Electronics",
      "rating": 4.9,
      "reviewsCount": 7800,
      "stock": 12,
      "isFeatured": true,
      "images": ["https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp"],
      "createdAt": "2025-03-29",
    },
    {
      "id": 14,
      "name": "SanDisk Extreme Portable SSD 1TB",
      "brand": "SanDisk",
      "description": "High-speed NVMe storage with up to 1050MB/s read and 1000MB/s write speeds.",
      "price": 11999,
      "discount": 15,
      "finalPrice": 10199,
      "category": "Accessories",
      "rating": 4.5,
      "reviewsCount": 42000,
      "stock": 150,
      "isFeatured": false,
      "images": ["https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp"],
      "createdAt": "2025-04-02",
    },
    {
      "id": 15,
      "name": "Elgato Stream Deck MK.2",
      "brand": "Elgato",
      "description": "Studio controller with 15 customizable LCD keys for streaming and editing.",
      "price": 15499,
      "discount": 5,
      "finalPrice": 14724,
      "category": "Accessories",
      "rating": 4.8,
      "reviewsCount": 11200,
      "stock": 30,
      "isFeatured": false,
      "images": ["https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp"],
      "createdAt": "2025-04-05",
    },
    {
      "id": 16,
      "name": "Garmin Forerunner 965",
      "brand": "Garmin",
      "description": "Premium running and triathlete smartwatch with bright AMOLED display.",
      "price": 64990,
      "discount": 7,
      "finalPrice": 60440,
      "category": "Wearables",
      "rating": 4.7,
      "reviewsCount": 2600,
      "stock": 22,
      "isFeatured": true,
      "images": ["https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp"],
      "createdAt": "2025-04-10",
    },
    {
      "id": 17,
      "name": "ASUS ROG Ally Z1 Extreme",
      "brand": "ASUS",
      "description":
          "Powerful handheld gaming device running full Windows 11 platform.",
      "price": 69990,
      "discount": 14,
      "finalPrice": 60191,
      "category": "Electronics",
      "rating": 4.4,
      "reviewsCount": 13900,
      "stock": 0,
      "isFeatured": false,
      "images": ["https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp"],
      "createdAt": "2025-04-14",
    },
    {
      "id": 18,
      "name": "HyperX QuadCast S Microphone",
      "brand": "HyperX",
      "description": "USB condenser microphone with striking RGB lighting and anti-vibration mount.",
      "price": 14499,
      "discount": 10,
      "finalPrice": 13049,
      "category": "Accessories",
      "rating": 4.7,
      "reviewsCount": 23000,
      "stock": 45,
      "isFeatured": false,
      "images": ["https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp"],
      "createdAt": "2025-04-19",
    },
    {
      "id": 19,
      "name": "SteelSeries Apex Pro TKL Keyboard",
      "brand": "SteelSeries",
      "description": "World's fastest mechanical gaming keyboard with adjustable actuation.",
      "price": 21999,
      "discount": 12,
      "finalPrice": 19359,
      "category": "Accessories",
      "rating": 4.8,
      "reviewsCount": 9400,
      "stock": 19,
      "isFeatured": true,
      "images": ["https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp"],
      "createdAt": "2025-04-24",
    },
    {
      "id": 20,
      "name": "Nothing Phone (2)",
      "brand": "Nothing",
      "description":
          "Unique Glyph Interface design, premium performance, and refined OS.",
      "price": 44999,
      "discount": 8,
      "finalPrice": 41399,
      "category": "Electronics",
      "rating": 4.5,
      "reviewsCount": 17800,
      "stock": 55,
      "isFeatured": false,
      "images": ["https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp"],
      "createdAt": "2025-05-01",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.topCenter,
            radius: 1,
            colors: [Color(0xffffe2d0), Color(0xffF9F9F9)],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                spacing: 10,
                children: [
                  // user profile Row
                  getProfileRow(),
                  // banner
                 getBannerSlider(),
              
                  SizedBox(height: 10),
                  // search bar
                  getSearchBar(),
                  SizedBox(height: 10),
                  // Categories
                  getCategories(),
                  SizedBox(height: 10),
              
                  //products list
                  getProductList(context: context)
              
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


  Widget getProductCard({required int index, required BuildContext context}) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetail(mproduct: products[index])));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(11), // 🔴 Fixed syntax: Added "BorderRadius"
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // 🟢 Spaced elements evenly
                children: [
                  Expanded(child: Text(products[index]["name"], maxLines: 1, overflow: TextOverflow.ellipsis)),
                  const Icon(Icons.heart_broken_outlined, size: 22),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Hero(
              tag: "${products[index]["id"]}",
              child: Image.network(
                  products[index]["images"][0],
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover // 🔴 Fixed syntax: Added "BoxFit"
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // 🟢 Safer alternative to 'spacing' in Rows
                children: [
                  Text("Price is \$ 20"), // 🔴 Fixed syntax: Removed duplicate unescaped quote
                  AppIconRoundWidget(icon: Icons.backpack_sharp),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getProductList({required BuildContext context}) {
    return Column(children: [
      Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Text("Latest Products", style: GoogleFonts.poppins(fontWeight: .normal, fontSize: 20)),
            Text("See All", style: GoogleFonts.poppins(fontWeight: .normal, fontSize: 20))
          ]),
      SizedBox(height: 10),
      GridView.builder(
          padding: .zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 11,
              crossAxisSpacing: 11,
              childAspectRatio: 3/4
          ),
          itemBuilder: (_, index){
            return getProductCard(index: index,context: context);
          })
    ]);
  }

   Widget getCategories() {
    return Column(
      spacing: 14,
      children: [
        Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Text("Categories", style: GoogleFonts.poppins(fontWeight: .normal, fontSize: 20)),
            Text("See All", style: GoogleFonts.poppins(fontWeight: .normal, fontSize: 20))
          ],),
        SizedBox(
          height: 95,
          child:
          ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 6, // Set the number of items you need
            separatorBuilder: (context, index) => const SizedBox(width: 12),

            // 2. Builds each item cleanly using the index
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(5),
                width: 65,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(50),
                    bottom: Radius.circular(50),
                  ),
                  border: Border.all(
                    color: Colors.orange.shade400,
                    width: 1,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipOval(
                      child: Image.network(
                        "https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp",
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover, // Ensures the profile picture crops nicely inside the circle
                      ),
                    ),
                    const Text("Laptop"),
                  ],
                ),
              );
            },
          ),
        )

      ],
    );
}

  Widget getSearchBar(){
return  Row(
    spacing: 20,
    children: [
      Expanded(child: SizedBox(
        height: 50,
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              prefixIconConstraints: BoxConstraints(
                minWidth: 50,
                minHeight: 50,
                maxWidth: 50,
                maxHeight: 50,
              ),
              hintText: "Search..",
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: .circular(50),
                  borderSide: .none
              )
          ),
        ),
      )),

      AppIconRoundWidget(icon: Icons.filter)
    ]
);
}

   Widget getProfileRow() {
    return ListTile(
        contentPadding: .zero,
        leading: CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(
            "https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp",
          ),
        ),
        title: Text("Morning, Sanjeev"),
        subtitle: Text("What would you buy today"),
        titleTextStyle: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: .w600
        ),
        subtitleTextStyle: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 12
        ),
        trailing: AppIconRoundWidget(icon: Icons.shopping_bag_outlined)
    );
   }

   Widget getBannerSlider() {
    return  Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text("Enjoy the Special offer up to 30% off",
                  maxLines: 2,
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: .w600
                  )),
              Text("From 14 June 2026",
                  maxLines: 1,
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: .w200
                  ))
            ],
          ),
        ),
        SizedBox(width: 10),
        ClipOval(child: Image.network("https://storyblok-cdn.photoroom.com/f/191576/2400x1260/fd054dca6a/round_profile_picture_og_image.webp", width: 50, height: 50, fit: .cover))
      ],
    );
   }

}
