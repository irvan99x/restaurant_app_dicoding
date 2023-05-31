import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_app_dicoding/restaurant.dart';
import 'package:restaurant_app_dicoding/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home_page';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Restaurant Apps',
          style: GoogleFonts.roboto(),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder<String>(
        future: DefaultAssetBundle.of(context)
            .loadString('assets/data/local_restaurant.json'),
        builder: (context, snapshot) {
          final List restaurantss = parseRestaurant(snapshot.data);
          return ListView.builder(
            itemCount: restaurantss.length,
            itemBuilder: (context, index) {
              return _buildRestaurantIte(context, restaurantss[index]);
            },
          );
        },
      ),
    );
  }
}

Widget _buildRestaurantIte(BuildContext context, restaurants) {
  return ListTile(
    contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    onTap: () {
      Navigator.pushNamed(context, DetailPage.routeName,
          arguments: restaurants);
    },
    leading: Image.network(
      restaurants.pictureId,
      width: 100,
      errorBuilder: (ctx, error, _) => const Center(child: Icon(Icons.error)),
    ),
    title: Text(
      restaurants.name,
      style: GoogleFonts.roboto(),
    ),
    subtitle: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.location_pin),
            Text(
              restaurants.city,
              style: GoogleFonts.roboto(),
            ),
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            Text(
              restaurants.rating.toString(),
              style: GoogleFonts.roboto(),
            ),
          ],
        ),
        const Divider(
          thickness: 2,
        )
      ],
    ),
  );
}
