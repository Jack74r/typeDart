import 'dart:convert';

import 'package:dio/dio.dart';

typedef ModelBaseDeserialization<T> = T Function(Map<String, dynamic>);

abstract class ModelBase<T> {
  ModelBase() {
    dio.options.baseUrl = "http://localhost:3001/";
  }
  String get serviceName;
  Dio dio = Dio();

  //ModelBaseDeserialization fromJson;
  // T Function fromJson;
  dynamic fromJson(Map<String, dynamic> json);
  Map<String, dynamic> toJson();

  Future<T> getOne(int index) async {
    //final Response response = await dio.get('$serviceName/$index');
    final Response response = Response(data: responseOneLocal);
    T object;

    //if (response.statusCode == 200) {
    object = fromJson(response.data);
    //} else {
    // Error Handling
    //}
    return object;
  }

  Future<List<T>> getMany() async {
    //final Response response = await dio.get('$serviceName');
    final Response response = Response(data: responseManyLocal);
    List<T> listObject;

    //if (response.statusCode == 200) {
    List data = response.data;
    listObject = data.map((e) => fromJson(e)).toList();
    //} else {
    //  // Error Handling
    //}
    return listObject;
  }

  var responseOneLocal = {
    "id": 26,
    "createdAt": "2019-08-01T17:26:32.102Z",
    "updatedAt": "2019-08-01T17:26:32.102Z",
    "email": "1@1.fr",
    "username": "1",
    "role": "user",
    "firstname": "roberto",
    "lastname": "gallego",
    "birthday": "1951-05-15T01:16:10.000Z",
    "photoUrl": "https://randomuser.me/api/portraits/med/men/18.jpg",
    "phone": "985-048-512",
    "departement": null,
    "isActive": true,
    "description": null
  };

  var responseManyLocal = [
    {
      "id": 26,
      "createdAt": "2019-08-01T17:26:32.102Z",
      "updatedAt": "2019-08-01T17:26:32.102Z",
      "email": "1@1.fr",
      "username": "1",
      "role": "user",
      "firstname": "roberto",
      "lastname": "gallego",
      "birthday": "1951-05-15T01:16:10.000Z",
      "photoUrl": "https://randomuser.me/api/portraits/med/men/18.jpg",
      "phone": "985-048-512",
      "departement": null,
      "isActive": true,
      "description": null
    },
    {
      "id": 27,
      "createdAt": "2019-12-14T22:36:42.818Z",
      "updatedAt": "2019-12-14T22:36:42.818Z",
      "email": "raph@test.fr",
      "username": "raph",
      "role": "user",
      "firstname": "Kylian",
      "lastname": "Sanchez",
      "birthday": "1947-06-02T07:16:36.000Z",
      "photoUrl": "https://randomuser.me/api/portraits/med/men/83.jpg",
      "phone": "05-93-87-51-75",
      "departement": null,
      "isActive": true,
      "description": null
    },
    {
      "id": 28,
      "createdAt": "2020-01-01T21:52:08.115Z",
      "updatedAt": "2020-01-01T21:52:08.115Z",
      "email": "admin@admin.fr",
      "username": "admin",
      "role": "admin",
      "firstname": "Dolores",
      "lastname": "Holt",
      "birthday": "1968-05-01T06:26:56.000Z",
      "photoUrl": "https://randomuser.me/api/portraits/med/women/6.jpg",
      "phone": "04-1872-5060",
      "departement": null,
      "isActive": true,
      "description": null
    },
    {
      "id": 29,
      "createdAt": "2019-12-14T22:36:42.818Z",
      "updatedAt": "2019-12-14T22:36:42.818Z",
      "email": "roger@test.fr",
      "username": "roger",
      "role": "user",
      "firstname": "Roger",
      "lastname": "Roro",
      "birthday": "1947-06-02T07:16:36.000Z",
      "photoUrl": "https://randomuser.me/api/portraits/med/men/83.jpg",
      "phone": "05-93-87-51-75",
      "departement": null,
      "isActive": true,
      "description": null
    }
  ];
}
