import 'package:hive/hive.dart';
part 'wishlist_place.g.dart';

@HiveType(typeId: 2)
class WishlistPlace extends HiveObject {
  @HiveField(0) String title;
  @HiveField(1) String story;
  WishlistPlace(this.title, this.story);
}
