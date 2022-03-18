import 'package:flutter/material.dart';
import 'package:food_ui/constants.dart';
import 'package:food_ui/demoData.dart';

import 'components/image_carousel.dart';
import 'components/restaurant_info_medium_card.dart';
import 'components/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          //header
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            floating: true,
            title: Column(
              children: [
                Text(
                  "Delivery".toUpperCase(),
                  style: Theme.of(context).textTheme.caption!.copyWith(
                        color: kActiveColor,
                      ),
                ),
                const Text(
                  "San Francisco",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(primary: kAccentColor),
                child: const Text("Filter"),
              )
            ],
          ),
          //ImageCarousel
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: ImageCarousel(),
            ),
          ),
          //Featured Partners
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: "Featured Partners",
                press: () {},
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      demoMediumCardData.length,
                      (index) => Padding(
                            padding: const EdgeInsets.only(
                              left: defaultPadding,
                              bottom: defaultPadding,
                            ),
                            child: RestaurantInfoMediumCard(
                              img: demoMediumCardData[index]['image'],
                              name: demoMediumCardData[index]['name'],
                              location: demoMediumCardData[index]['location'],
                              delivertime: demoMediumCardData[index]
                                  ['delivertTime'],
                              rating: demoMediumCardData[index]['rating'],
                              press: () {},
                            ),
                          ))),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: Image.asset('assets/images/Banner.png'),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: "Best Pick",
                press: () {},
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      demoMediumCardData.length,
                      (index) => Padding(
                            padding: const EdgeInsets.only(
                              left: defaultPadding,
                              bottom: defaultPadding,
                            ),
                            child: RestaurantInfoMediumCard(
                              img: demoMediumCardData[index]['image'],
                              name: demoMediumCardData[index]['name'],
                              location: demoMediumCardData[index]['location'],
                              delivertime: demoMediumCardData[index]
                                  ['delivertTime'],
                              rating: demoMediumCardData[index]['rating'],
                              press: () {},
                            ),
                          ))),
            ),
          ),
        ],
      ),
    );
  }
}
