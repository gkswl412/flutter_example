// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      id: json['id'] as String,
      restaurant:
          RestaurantModel.fromJson(json['restaurant'] as Map<String, dynamic>),
      name: json['name'] as String,
      imgUrl: DataUtils.pathToUrl(json['imgUrl'] as String),
      detail: json['detail'] as String,
      price: json['price'] as int,
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'restaurant': instance.restaurant,
      'name': instance.name,
      'imgUrl': instance.imgUrl,
      'detail': instance.detail,
      'price': instance.price,
    };
