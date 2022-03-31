import 'package:flutter/foundation.dart';
import '../models/place.dart';
import 'dart:io';
import '../databaza/databaza1.dart';
import '../databaza/databazalok.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  Place findById(String id){
    return _items.firstWhere((place) => place.id==id);
  }

  Future<void> addPlace(String pickedTitle,
      File pickedImage,
      PlaceLocation pickedLocation,) async {
    final address = await LocationHelper.getPlaceAddress(
        pickedLocation.lattitude, pickedLocation.longitude);
    final updatedLocation = PlaceLocation(longitude: pickedLocation.longitude,
      lattitude: pickedLocation.lattitude,
      address: address,);
    final newPlace = Place(
      id: DateTime.now().toString(),
      image: pickedImage,
      title: pickedTitle,
      location: updatedLocation,
    );
    _items.add(newPlace);
    notifyListeners();
    DBHelper.insert('user_places', {
      'id': newPlace.id,
      'title': newPlace.title,
      'image': newPlace.image.path,
      'loc_lat': newPlace.location!.lattitude,
      'loc_lng': newPlace.location!.longitude,
      'address': newPlace.location!.address!,
    });
  }

  Future<void> fetchAndSetPlaces() async {
    final dataList = await DBHelper.getData('user_places');
    _items = dataList
        .map(
          (item) =>
          Place(
            id: item['id'],
            title: item['title'],
            image: File(item['image']),
            location: PlaceLocation(lattitude:item['loc_lat'] ,longitude:item['loc_lng'],address:item['address'] ),
          ),
    )
        .toList();
    notifyListeners();
  }
}
