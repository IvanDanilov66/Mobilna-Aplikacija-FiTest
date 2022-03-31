import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Lokacija/providers/great_places.dart';
import '../Lokacija/screens/places_list_screen.dart';
import '../Lokacija/screens/add_place_screen.dart';
import '../Lokacija/screens/place_detail_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: "Great Places",
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
        ),
        home: PlacesListScreen(),
        routes: {
          AddPlaceScreen.routeName: (ctx) => AddPlaceScreen(),
          PlaceDetailScreen.routeName: (ctx) => PlaceDetailScreen()
        },
      ),
    );
  }
}
