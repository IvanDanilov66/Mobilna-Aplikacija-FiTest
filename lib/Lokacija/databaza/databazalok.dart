import 'dart:convert';
import 'package:http/http.dart' as http;

const GOOGLE_API_KEY = 'AIzaSyCzYXiHnuBdabOnFL0_xHktEGWnTk27iXM';
class LocationHelper {
  static String generateLocationPreviewImage({double? lattitude, double? longtitude}) {
    return  "https://maps.googleapis.com/maps/api/staticmap?center=$lattitude,$longtitude&zoom=13&size=300x150&maptype=roadmap&markers=color:red%7Clabel:C%7C$lattitude,$longtitude&key=$GOOGLE_API_KEY";
  }

  static Future<String> getPlaceAddress(double lat, double lng) async
  {
    final url = 'https://geocode.maps.co/reverse?lat=$lat&lon=$lng';
    final response = await http.get(Uri.parse(url));
    return json.decode(response.body)['display_name'];

  }
}