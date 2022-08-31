import 'dart:convert';

import 'package:wakke_fun/models/post_model.dart';
import 'package:flutter/services.dart' show rootBundle;

class PostRepository{

  Future<List<Post>?> getPosts() async {
    try{
    String data = await rootBundle.loadString('assets/json_wakkefun.json');
    final jsonResult = json.decode(data);
    List<Post> posts = List<Post>.from(jsonResult.map((e) => Post.fromJson(e)).toList());
    return posts;
    }catch(error){
      print('error getPosts $error');
      return null;
    }
  }
}