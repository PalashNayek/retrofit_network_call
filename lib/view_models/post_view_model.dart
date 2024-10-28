import 'package:flutter/material.dart';
import 'package:retrofit_network_call/models/post_response.dart';

import '../repositories/post_repository.dart';


class PostViewModel extends ChangeNotifier {
  final PostRepository repository;

  PostViewModel(this.repository);

  PostResponse? post;
  bool isLoading = false;

  Future<void> getPost(int id) async {
    isLoading = true;
    notifyListeners();

    post = await repository.fetchPost(id);

    isLoading = false;
    notifyListeners();
  }
}