

import 'package:retrofit_network_call/models/post_response.dart';

import '../api_endpoints/post_api_service.dart';

class PostRepository {
  final PostApiService apiService;

  PostRepository(this.apiService);

  Future<PostResponse> fetchPost(int id) async {
    return await apiService.getPost(id);
  }
}