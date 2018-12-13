import 'package:json_annotation/json_annotation.dart'; 
  
part 'user.g.dart';

// flutter packages pub run build_runner build

@JsonSerializable()
  class Entity extends Object with _$EntitySerializerMixin{

  Data data;

  Entity(this.data,);

  factory Entity.fromJson(Map<String, dynamic> srcJson) => _$EntityFromJson(srcJson);

}

  
@JsonSerializable()
  class Data extends Object with _$DataSerializerMixin{

  AdvertesPicture advertesPicture;

  List<Floor3> floor3;

  List<Floor2> floor2;

  FloorName floorName;

  List<Floor1> floor1;

  List<Category> category;

  List<Slides> slides;

  String buyTime;

  List<HotGoods> hotGoods;

  List<Recommend> recommend;

  SendFee sendFee;

  Data(this.advertesPicture,this.floor3,this.floor2,this.floorName,this.floor1,this.category,this.slides,this.buyTime,this.hotGoods,this.recommend,this.sendFee,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

}

  
@JsonSerializable()
  class AdvertesPicture extends Object with _$AdvertesPictureSerializerMixin{

  String PICTURE_ADDRESS;

  AdvertesPicture(this.PICTURE_ADDRESS,);

  factory AdvertesPicture.fromJson(Map<String, dynamic> srcJson) => _$AdvertesPictureFromJson(srcJson);

}

  
@JsonSerializable()
  class Floor3 extends Object with _$Floor3SerializerMixin{

  String goodsId;

  String image;

  Floor3(this.goodsId,this.image,);

  factory Floor3.fromJson(Map<String, dynamic> srcJson) => _$Floor3FromJson(srcJson);

}

  
@JsonSerializable()
  class Floor2 extends Object with _$Floor2SerializerMixin{

  String goodsId;

  String image;

  Floor2(this.goodsId,this.image,);

  factory Floor2.fromJson(Map<String, dynamic> srcJson) => _$Floor2FromJson(srcJson);

}

  
@JsonSerializable()
  class FloorName extends Object with _$FloorNameSerializerMixin{

  String floor3;

  String floor2;

  String floor1;

  FloorName(this.floor3,this.floor2,this.floor1,);

  factory FloorName.fromJson(Map<String, dynamic> srcJson) => _$FloorNameFromJson(srcJson);

}

  
@JsonSerializable()
  class Floor1 extends Object with _$Floor1SerializerMixin{

  String goodsId;

  String image;

  Floor1(this.goodsId,this.image,);

  factory Floor1.fromJson(Map<String, dynamic> srcJson) => _$Floor1FromJson(srcJson);

}

  
@JsonSerializable()
  class Category extends Object with _$CategorySerializerMixin{

  String mallCategoryId;

  String mallCategoryName;

  List<BxMallSubDto> bxMallSubDto;

  String image;

  Category(this.mallCategoryId,this.mallCategoryName,this.bxMallSubDto,this.image,);

  factory Category.fromJson(Map<String, dynamic> srcJson) => _$CategoryFromJson(srcJson);

}

  
@JsonSerializable()
  class BxMallSubDto extends Object with _$BxMallSubDtoSerializerMixin{

  String mallSubId;

  String mallCategoryId;

  String mallSubName;

  BxMallSubDto(this.mallSubId,this.mallCategoryId,this.mallSubName,);

  factory BxMallSubDto.fromJson(Map<String, dynamic> srcJson) => _$BxMallSubDtoFromJson(srcJson);

}

  
@JsonSerializable()
  class Slides extends Object with _$SlidesSerializerMixin{

  String image;

  String goodsId;

  Slides(this.image,this.goodsId,);

  factory Slides.fromJson(Map<String, dynamic> srcJson) => _$SlidesFromJson(srcJson);

}

  
@JsonSerializable()
  class HotGoods extends Object with _$HotGoodsSerializerMixin{

  double mallPrice;

  String image;

  String goodsId;

  double price;

  String name;

  HotGoods(this.mallPrice,this.image,this.goodsId,this.price,this.name,);

  factory HotGoods.fromJson(Map<String, dynamic> srcJson) => _$HotGoodsFromJson(srcJson);

}

  
@JsonSerializable()
  class Recommend extends Object with _$RecommendSerializerMixin{

  String image;

  double mallPrice;

  String goodsId;

  double price;

  String goodsName;

  Recommend(this.image,this.mallPrice,this.goodsId,this.price,this.goodsName,);

  factory Recommend.fromJson(Map<String, dynamic> srcJson) => _$RecommendFromJson(srcJson);

}

  
@JsonSerializable()
  class SendFee extends Object with _$SendFeeSerializerMixin{

  String chargeStartFee;

  String deliveryFee;

  SendFee(this.chargeStartFee,this.deliveryFee,);

  factory SendFee.fromJson(Map<String, dynamic> srcJson) => _$SendFeeFromJson(srcJson);

}

  
