import 'package:flutter/material.dart';
import 'package:wakke_fun/models/post_model.dart';
import 'package:wakke_fun/repository/post_repository.dart';

class HomeController extends ChangeNotifier{
  final PostRepository postRepository = PostRepository();
  List<Post> posts = [];

  HomeController(){
    init();
  }

  init() async {
    posts = await postRepository.getPosts() ?? [];
    notifyListeners();
  }
}