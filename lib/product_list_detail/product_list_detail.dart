import 'package:classico_as/product_list_detail/custom_widgets/app_icon_round_bg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetail extends StatelessWidget {

  Map<String,dynamic> mproduct;

  ProductDetail({required this.mproduct});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Section (No longer wrapped in Expanded, so it retains its size)
            Container(
              padding: const EdgeInsets.only(left: 21, right: 21, top: 60, bottom: 30),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(45)),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Color(0xffFDEEDA), Color(0xffE7E4E7)],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                       InkWell(
                         onTap: (){
                           Navigator.pop(context);
                         },
                         child: AppIconRoundWidget(
                          icon: Icons.arrow_back_ios,
                          fgColor: Colors.deepOrange
                         ),
                       ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Product Details",
                            style: GoogleFonts.poppins(fontSize: 25),
                          ),
                        ),
                      ),
                       AppIconRoundWidget(
                        icon: Icons.share,
                        fgColor: Colors.deepOrange,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Hero(
                    tag: "${mproduct["id"]}",
                    child: ClipOval(
                      child: Image.network("${mproduct["images"][0]}",
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      radius: 20,
                    ),
                    title: Text(mproduct["name"]?.toString() ?? '')
                  ),
                ],
              ),
            ),

            // Bottom Section (Add all your new widgets here)
            Padding(
              padding: const EdgeInsets.all(21.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${mproduct["brand"]}", style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Text("${mproduct["description"]}", style: GoogleFonts.poppins(fontSize: 14)),
                  // Add more widgets here safely without pushing the top view up!
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}