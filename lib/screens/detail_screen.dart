import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_app_dicoding/restaurant.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/detail_page';
  const DetailPage({
    super.key,
    required this.restaurant,
  });
  final Restaurants restaurant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          restaurant.name,
          style: GoogleFonts.roboto(),
        ),
      ),
      body: SingleChildScrollView(
        child: Hero(
          tag: restaurant.pictureId,
          child: Column(
            children: [
              Image.network(restaurant.pictureId),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.location_pin),
                            Text(
                              restaurant.city,
                              style: GoogleFonts.roboto(),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text(
                              restaurant.rating.toString(),
                              style: GoogleFonts.roboto(),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.blueGrey,
                    ),
                    Text(
                      'Description',
                      style: GoogleFonts.roboto(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      restaurant.description,
                      style: GoogleFonts.roboto(),
                      overflow: TextOverflow.clip,
                    ),
                    const Divider(
                      color: Colors.blueGrey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Menus:',
                          style: GoogleFonts.roboto(),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Foods:',
                              style: GoogleFonts.roboto(),
                            ),
                            Text(
                              restaurant.menus.foods
                                  .map((foods) => foods.name)
                                  .toString(),
                              style: GoogleFonts.roboto(),
                            ),
                            const Text('Drinks:'),
                            Text(
                              restaurant.menus.drinks
                                  .map((drink) => drink.name)
                                  .toString(),
                              style: GoogleFonts.roboto(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
