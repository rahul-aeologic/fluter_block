import 'package:fluter_block/core/block/post_cubit.dart';
import 'package:fluter_block/core/modal/post_data_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsView extends StatelessWidget {
  const PostsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Block Cubit Demo',
        )),
      ),
      body: BlocBuilder<PostsCubit, List<Post>>(
        builder: (context, posts) {
          if (posts.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView.builder(itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(posts[index].title),
                leading: Text('${posts[index].id}'),
              ),
            );
          });
        },
      ),
    );
  }
}
