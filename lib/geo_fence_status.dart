/// State of the geo-fence
/// [latitude] and [longitude] contain the coordinates at which the enter event is made,
/// [fence_latitude] and [fence_longitude] contain the center of the fence itself.
class GeoFenceStatus {
  final Status status;

  GeoFenceStatus({required this.status});

  /// Latitude of the enter event.
  double latitude = 0;

  /// Longitude of the enter event.
  double longitude = 0;

  /// Latitude of center position of the fence.
  double fence_latitude = 0;

  /// Longitude of center position of the fence.
  double fence_longitude = 0;

  /// Distance to the center of the fence in meters.
  double distance = 0;

  /// in meters
}

enum Status {
  INITIALIZE,

  ///when service will start
  ENTER,

  ///when the user enters inside fence area
  EXIT,

  ///when the user exits from fence area
  STOP,

  ///when service will stop
  ERROR,
}
