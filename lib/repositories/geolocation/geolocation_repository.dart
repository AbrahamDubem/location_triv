import 'package:geolocator/geolocator.dart';
import 'package:location_triv/repositories/geolocation/base_geolocation_repositories.dart';

class GeoLocationRepository extends BaseGeoLocationRepository {
  GeoLocationRepository();

  @override
  Future<Position> getCurrentLocation() async {
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }
}
