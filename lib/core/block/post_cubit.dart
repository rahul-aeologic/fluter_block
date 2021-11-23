import 'package:fluter_block/core/modal/post_data_modal.dart';
import 'package:fluter_block/core/service/data_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsCubit extends Cubit<List<Post>> {
  final _dataService = DataService();

  PostsCubit() : super([]);

  void getPosts() async => emit(await _dataService.getPosts());
}
