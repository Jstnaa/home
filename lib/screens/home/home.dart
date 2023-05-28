import 'package:e_commerce/widgets/top_tiles/top_tiles.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TopTiles(subtitle: "", title: "Latest Store"),
                TextFormField(
                  decoration: const InputDecoration(hintText: "What's on your mind?"),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  )
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
          child: Row(
            children: categoriesList
            .map(
              (e) => Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Card(
              color: Colors.white,
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child:  SizedBox(
                height: 100,
                width: 100,
                child: Image.network(e),
              ),
            ),
          ),
          )
          .toList(),
       ),
      ),
        ],
      ),
    );
  }
}

List<String>categoriesList = [
  "https://i.ebayimg.com/images/g/6ZgAAOSwnDJgthud/s-l400.png",
  "https://live.staticflickr.com/65535/50372847211_da3e0655a8_k.jpg",
  "https://media.karousell.com/media/photos/products/2021/6/3/rakk_ilis_mechanical_gaming_ke_1622702181_b0861049.jpg",
  "https://m.media-amazon.com/images/I/61NLq9ISIsL.jpg",
  "https://www.brentford.com/media/wysiwyg/PC/Gamer_PC/brentford_RGB_PC_2021.png",
  "https://cdn.shopify.com/s/files/1/2227/7667/products/led-hub-8-xs_1024x1024.png?v=1572059515",
];