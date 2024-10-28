import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/service_locator.dart';
import '../view_models/post_view_model.dart';

class PostView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<PostViewModel>(),
      child: Scaffold(
        appBar: AppBar(title: Text('Post')),
        body: Consumer<PostViewModel>(
          builder: (context, viewModel, child) {
            if (viewModel.isLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (viewModel.post != null) {
              return Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(viewModel.post!.title, style: TextStyle(fontSize: 24)),
                    SizedBox(height: 16),
                    Text(viewModel.post!.body),
                  ],
                ),
              );
            } else {
              return Center(
                child: ElevatedButton(
                  onPressed: () => viewModel.getPost(1),
                  child: Text('Fetch Post'),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}