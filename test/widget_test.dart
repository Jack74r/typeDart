// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:euroad_app_api/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:euroad_app_api/main.dart';

void main() {
  //test(
  //  'should Return many user old',
  //  () async {
  //    // arrange
  //    Type user = User;
  //    Dio dio = Dio();
  //    dio.options.baseUrl = "http://localhost:3001/";
  //    Response responseOneUser = await dio.get("user/26");
  //    var oneUser = User.fromJson(responseOneUser.data);
  //    //
  //    Response responseManyUser = await dio.get("user");
  //    List data = responseManyUser.data;
  //    List<User> listUser = data.map((e) => User.fromJson(e)).toList();
  //    log(listUser[1].email);
  //    log("");
  //  },
  //);
  test(
    'should Return user ModelBase',
    () async {
      // arrange

      // act
      User user = await User().getOne(26);
      // assert
      assert(user.id == 26);
    },
  );

  test(
    'should Return Manyuser ModelBase',
    () async {
      // arrange

      // act
      var users = (await User().getMany());
      // assert
      assert(users.length > 0);
      log(users.runtimeType.toString());
      log("message");
    },
  );
}
