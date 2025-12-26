import 'package:hive/hive.dart';

part 'wishlist_place.g.dart';

@HiveType(typeId: 1)
class WishlistPlace {
  @HiveField(0)
  final String placeName;

  @HiveField(1)
  final String location;

  WishlistPlace({required this.placeName, required this.location});
}
