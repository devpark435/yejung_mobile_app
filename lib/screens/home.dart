import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: WaveClipperOne(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .3,
            color:
                Theme.of(context).colorScheme.primaryContainer.withOpacity(0.7),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 100),
              child: Row(
                children: [
                  const FaIcon(
                    FontAwesomeIcons.cross,
                    color: Colors.white,
                    size: 42,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("예정교회",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .apply(color: Colors.white, fontWeightDelta: 3)),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text("중고등부",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .apply(
                                    color: Colors.white, fontWeightDelta: 3)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20, 70, 20, 0),
          child: Column(
            children: [
              Expanded(
                  flex: 7,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 400,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: [1, 2, 3, 4, 5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Text(
                                  '사진 $i',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ));
                        },
                      );
                    }).toList(),
                  )),
              Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: FaIcon(FontAwesomeIcons.list),
                            ),
                            Text(
                              "바로가기",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .apply(fontWeightDelta: 5),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.background,
                              boxShadow: [
                                BoxShadow(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primaryContainer
                                        .withOpacity(0.7),
                                    blurRadius: 5,
                                    offset: const Offset(0, 5))
                              ],
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "온라인 예배",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .apply(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurface,
                                          fontWeightDelta: 3),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: FaIcon(
                                          FontAwesomeIcons.youtube,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .error,
                                          size: 40,
                                        )),
                                    Text(
                                      "Youtube",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .apply(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSurface,
                                              fontWeightDelta: 2),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: FaIcon(
                                        FontAwesomeIcons.shareAlt,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSurface,
                                        size: 40,
                                      ),
                                    ),
                                    Text(
                                      "링크 공유",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .apply(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSurface,
                                              fontWeightDelta: 2),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
