import 'package:flutter/foundation.dart';
import 'dart:io';

class PlaceLocation {

  final double lattitude;
  final double longitude;
  final String? address;

const PlaceLocation({this.address,@required required this.longitude,@required required this.lattitude});

}

class Place {
  final String id;
  final String title;
  final File image;
  final PlaceLocation? location;

  Place({
 @required required this.id,
 @required required this.title,
 @required required this.location,
 @required required this.image,});
}