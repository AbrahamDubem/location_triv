import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location_triv/repositories/geolocation/geolocation_repository.dart';

part 'geolocation_event.dart';
part 'geolocation_state.dart';

class GeolocationBloc extends Bloc<GeolocationEvent, GeolocationState> {
  final GeoLocationRepository _geoLocationRepository;
  StreamSubscription _geoLocationSubscription;

  GeolocationBloc({required GeoLocationRepository geoLocationRepository}) :
  _geoLocationRepository = geoLocationRepository;
   super(GeolocationLoading());

  @override
  Stream<GeolocationState> mapEventToState(
    GeolocationEvent event,
  ) async* {
    if (event is LoadGeoLocation){
      yield* _mapLoadGeolocationToState();
    }
    else if (event is UpdateGeoLocation) {
      yield* _mapUpdateGeolocationToState(event);
    }
  }

  Stream<GeolocationState> _mapLoadGeolocationToState() async*{
     _geoLocationSubscription?.cancel();
  final Position position = await _geoLocationRepository.getCurrentLocation();

  add(UpdateGeoLocation(position: position));
  }
 
 Stream<GeolocationState> _mapUpdateGeoLocationToState(UpdateGeoLocation event) async*{
  yield GeolocationLoaded(Position: event.position);
 }


 @override
 Future<void> close(){

  _geoLocationSubscription?.cancel();
  return super.close();
 }
}
