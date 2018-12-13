// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Entity _$EntityFromJson(Map<String, dynamic> json) {
  return new Entity(json['data'] == null
      ? null
      : new Data.fromJson(json['data'] as Map<String, dynamic>));
}

abstract class _$EntitySerializerMixin {
  Data get data;
  Map<String, dynamic> toJson() => <String, dynamic>{'data': data};
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return new Data(
      json['advertesPicture'] == null
          ? null
          : new AdvertesPicture.fromJson(
              json['advertesPicture'] as Map<String, dynamic>),
      (json['floor3'] as List)
          ?.map((e) =>
              e == null ? null : new Floor3.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      (json['floor2'] as List)
          ?.map((e) =>
              e == null ? null : new Floor2.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['floorName'] == null
          ? null
          : new FloorName.fromJson(json['floorName'] as Map<String, dynamic>),
      (json['floor1'] as List)
          ?.map((e) =>
              e == null ? null : new Floor1.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      (json['category'] as List)
          ?.map((e) => e == null
              ? null
              : new Category.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      (json['slides'] as List)
          ?.map((e) =>
              e == null ? null : new Slides.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['buyTime'] as String,
      (json['hotGoods'] as List)
          ?.map((e) => e == null
              ? null
              : new HotGoods.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      (json['recommend'] as List)
          ?.map((e) => e == null
              ? null
              : new Recommend.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['sendFee'] == null
          ? null
          : new SendFee.fromJson(json['sendFee'] as Map<String, dynamic>));
}

abstract class _$DataSerializerMixin {
  AdvertesPicture get advertesPicture;
  List<Floor3> get floor3;
  List<Floor2> get floor2;
  FloorName get floorName;
  List<Floor1> get floor1;
  List<Category> get category;
  List<Slides> get slides;
  String get buyTime;
  List<HotGoods> get hotGoods;
  List<Recommend> get recommend;
  SendFee get sendFee;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'advertesPicture': advertesPicture,
        'floor3': floor3,
        'floor2': floor2,
        'floorName': floorName,
        'floor1': floor1,
        'category': category,
        'slides': slides,
        'buyTime': buyTime,
        'hotGoods': hotGoods,
        'recommend': recommend,
        'sendFee': sendFee
      };
}

AdvertesPicture _$AdvertesPictureFromJson(Map<String, dynamic> json) {
  return new AdvertesPicture(json['PICTURE_ADDRESS'] as String);
}

abstract class _$AdvertesPictureSerializerMixin {
  String get PICTURE_ADDRESS;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'PICTURE_ADDRESS': PICTURE_ADDRESS};
}

Floor3 _$Floor3FromJson(Map<String, dynamic> json) {
  return new Floor3(json['goodsId'] as String, json['image'] as String);
}

abstract class _$Floor3SerializerMixin {
  String get goodsId;
  String get image;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'goodsId': goodsId, 'image': image};
}

Floor2 _$Floor2FromJson(Map<String, dynamic> json) {
  return new Floor2(json['goodsId'] as String, json['image'] as String);
}

abstract class _$Floor2SerializerMixin {
  String get goodsId;
  String get image;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'goodsId': goodsId, 'image': image};
}

FloorName _$FloorNameFromJson(Map<String, dynamic> json) {
  return new FloorName(json['floor3'] as String, json['floor2'] as String,
      json['floor1'] as String);
}

abstract class _$FloorNameSerializerMixin {
  String get floor3;
  String get floor2;
  String get floor1;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'floor3': floor3, 'floor2': floor2, 'floor1': floor1};
}

Floor1 _$Floor1FromJson(Map<String, dynamic> json) {
  return new Floor1(json['goodsId'] as String, json['image'] as String);
}

abstract class _$Floor1SerializerMixin {
  String get goodsId;
  String get image;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'goodsId': goodsId, 'image': image};
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return new Category(
      json['mallCategoryId'] as String,
      json['mallCategoryName'] as String,
      (json['bxMallSubDto'] as List)
          ?.map((e) => e == null
              ? null
              : new BxMallSubDto.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['image'] as String);
}

abstract class _$CategorySerializerMixin {
  String get mallCategoryId;
  String get mallCategoryName;
  List<BxMallSubDto> get bxMallSubDto;
  String get image;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'mallCategoryId': mallCategoryId,
        'mallCategoryName': mallCategoryName,
        'bxMallSubDto': bxMallSubDto,
        'image': image
      };
}

BxMallSubDto _$BxMallSubDtoFromJson(Map<String, dynamic> json) {
  return new BxMallSubDto(json['mallSubId'] as String,
      json['mallCategoryId'] as String, json['mallSubName'] as String);
}

abstract class _$BxMallSubDtoSerializerMixin {
  String get mallSubId;
  String get mallCategoryId;
  String get mallSubName;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'mallSubId': mallSubId,
        'mallCategoryId': mallCategoryId,
        'mallSubName': mallSubName
      };
}

Slides _$SlidesFromJson(Map<String, dynamic> json) {
  return new Slides(json['image'] as String, json['goodsId'] as String);
}

abstract class _$SlidesSerializerMixin {
  String get image;
  String get goodsId;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'image': image, 'goodsId': goodsId};
}

HotGoods _$HotGoodsFromJson(Map<String, dynamic> json) {
  return new HotGoods(
      (json['mallPrice'] as num)?.toDouble(),
      json['image'] as String,
      json['goodsId'] as String,
      (json['price'] as num)?.toDouble(),
      json['name'] as String);
}

abstract class _$HotGoodsSerializerMixin {
  double get mallPrice;
  String get image;
  String get goodsId;
  double get price;
  String get name;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'mallPrice': mallPrice,
        'image': image,
        'goodsId': goodsId,
        'price': price,
        'name': name
      };
}

Recommend _$RecommendFromJson(Map<String, dynamic> json) {
  return new Recommend(
      json['image'] as String,
      (json['mallPrice'] as num)?.toDouble(),
      json['goodsId'] as String,
      (json['price'] as num)?.toDouble(),
      json['goodsName'] as String);
}

abstract class _$RecommendSerializerMixin {
  String get image;
  double get mallPrice;
  String get goodsId;
  double get price;
  String get goodsName;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'image': image,
        'mallPrice': mallPrice,
        'goodsId': goodsId,
        'price': price,
        'goodsName': goodsName
      };
}

SendFee _$SendFeeFromJson(Map<String, dynamic> json) {
  return new SendFee(
      json['chargeStartFee'] as String, json['deliveryFee'] as String);
}

abstract class _$SendFeeSerializerMixin {
  String get chargeStartFee;
  String get deliveryFee;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chargeStartFee': chargeStartFee,
        'deliveryFee': deliveryFee
      };
}
