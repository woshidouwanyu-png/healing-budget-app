// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_place.dart';

// ignore_for_file: type=lint

class WishlistPlaceAdapter extends TypeAdapter<WishlistPlace> {
  @override
  final int typeId = 1;

  @override
  WishlistPlace read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WishlistPlace(
      placeName: fields[0] as String,
      location: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, WishlistPlace obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.placeName)
      ..writeByte(1)
      ..write(obj.location);
  }
}
